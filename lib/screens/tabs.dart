import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/filter.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/main_drawer.dart';
class TabScreen extends StatefulWidget{

  const TabScreen({super.key});
  @override
  State<StatefulWidget> createState(){
    return _TabScreenState();
  }
}
class _TabScreenState extends State<TabScreen>{
  final List<Meal> _favouriteMeals = [];
  int _selectedPageIndex =0;

  void _showInfoMessage(String message){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  void _toggleMealFavouriteStatus(Meal meal){
    final isExistng = _favouriteMeals.contains(meal);
    if(isExistng){
      setState(() {
        _favouriteMeals.remove(meal);
      });
      _showInfoMessage('Meal is no longer a favourite');
    }
    else{
      setState(() {
      _favouriteMeals.add(meal); 
      });
      _showInfoMessage('Meal marked as favourute'); 
    }
  }

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async{
    Navigator.of(context).pop();
    if(identifier == 'filters'){
      final result = await Navigator.of(context).push<Map<Filter, bool>>(MaterialPageRoute(
        builder : (ctx) => const FilterScreen(),)
      );
    print(result);
    }
  }
  @override
  Widget build(BuildContext context) {
    Widget activePage =  CategoriesScreen(onToggleFavourite: _toggleMealFavouriteStatus,);
    var activePageTitle = 'Categories';
    if(_selectedPageIndex == 1){
      activePage = MealsScreen(
        meals: _favouriteMeals, 
        onToggleFavourite: _toggleMealFavouriteStatus,
      );
      activePageTitle = 'Your Favourites';
    }
    return Scaffold(
      appBar: AppBar(
        title:  Text(activePageTitle),
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen,),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          _selectPage(index);
        },
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.set_meal),label: 'Categories'), //Categories screen
          BottomNavigationBarItem(icon: Icon(Icons.star),label:'Favourites'),//Favourites screen
        ],
        ),
    );
  }
}