import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/models/meal.dart';
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

  void _toggleMealFavouriteStatus(Meal meal){
    final isExistng = _favouriteMeals.contains(meal);
    if(isExistng){
      _favouriteMeals.remove(meal);
    }
    else{
      _favouriteMeals.add(meal); 
    }
  }

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget activePage =  CategoriesScreen(onToggleFavourite: _toggleMealFavouriteStatus,);
    var activePageTitle = 'Categories';
    if(_selectedPageIndex == 1){
      activePage = MealsScreen(
        meals: [],
        onToggleFavourite: _toggleMealFavouriteStatus,
      );
      activePageTitle = 'Your Favourites';
    }
    return Scaffold(
      appBar: AppBar(
        title:  Text(activePageTitle),
      ),
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