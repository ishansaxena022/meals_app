import 'package:flutter/material.dart';
// import 'package:meals_app/screens/tabs.dart';
// import 'package:meals_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget{
  const FilterScreen({super.key});
  @override
  State<FilterScreen> createState(){
    return _FilterScreenState();
  }
}
class _FilterScreenState extends State<FilterScreen>{

  var _glutenFreeFilter = false;
  var _lactoseFreeFilter = false;
  var _veganFilter = false;
  var _vegetarianFilter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
      ),
      // drawer : MainDrawer(onSelectScreen: (identifier){
      //   if(identifier =="meals"){
      //     Navigator.of(context).pop();
      //     Navigator.of(context).pushReplacement(MaterialPageRoute(
      //       builder: (ctx) => const TabScreen()
      //     ));
      //   }
      //   else{
      //     Navigator.of(context).pop();
      //   }
      // }),
      body: Column(
        children: [
          SwitchListTile( //GlutenFree
            value: _glutenFreeFilter, 
            onChanged: (isChecked){
              setState(() {
                _glutenFreeFilter = isChecked;
              });
            }, 
            title: Text('Gluten free', style:Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            )),
            subtitle: Text('Only include gluten free meals',style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34,right: 22),
          ),
          SwitchListTile( //LactoseFree
            value: _lactoseFreeFilter, 
            onChanged: (isChecked){
              setState(() {
                _lactoseFreeFilter = isChecked;
              });
            }, 
            title: Text('Lactose free', style:Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            )),
            subtitle: Text('Only include lactose free meals',style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34,right: 22),
          ),
          SwitchListTile( //Vegetarian
            value: _vegetarianFilter, 
            onChanged: (isChecked){
              setState(() {
                _vegetarianFilter = isChecked;
              });
            }, 
            title: Text('Vegetarian', style:Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            )),
            subtitle: Text('Only vegetarian meals',style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34,right: 22),
          ),
          SwitchListTile( //Vegan
            value: _veganFilter, 
            onChanged: (isChecked){
              setState(() {
                _veganFilter = isChecked;
              });
            }, 
            title: Text('Vegan', style:Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            )),
            subtitle: Text('Only vegan meals',style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34,right: 22),
          )
        ],
      ),
    );
  }
}
