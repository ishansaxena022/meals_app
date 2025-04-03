import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/meals.dart';

class TabScreen extends StatefulWidget{

  const TabScreen({super.key});
  @override
  State<StatefulWidget> createState(){
    return _TabScreenState();
  }
}
class _TabScreenState extends State<TabScreen>{
  int _selectedPageIndex =0;
  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoriesScreen();
    var activePageTitle = 'Categories';
    if(_selectedPageIndex == 1){
      activePage = const MealsScreen(
        meals: []
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