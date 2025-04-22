import 'package:flutter/material.dart';
// import 'package:meals_app/screens/tabs.dart';
// import 'package:meals_app/widgets/main_drawer.dart';

enum Filter{
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan
}
class FilterScreen extends StatefulWidget{
  const FilterScreen({super.key});
  @override
  State<FilterScreen> createState(){
    return _FilterScreenState();
  }
}
class _FilterScreenState extends State<FilterScreen>{

  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _veganFilterSet = false;
  var _vegetarianFilterSet = false;

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
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop,result){
          if(didPop) return;

          Navigator.of(context).pop({
            Filter.glutenFree : _glutenFreeFilterSet,
            Filter.lactoseFree : _lactoseFreeFilterSet,
            Filter.vegetarian : _vegetarianFilterSet,
            Filter.vegan : _veganFilterSet,

          });
        },
        child: Column(
          children: [
            SwitchListTile( //GlutenFree
              value: _glutenFreeFilterSet, 
              onChanged: (isChecked){
                setState(() {
                  _glutenFreeFilterSet = isChecked;
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
              value: _lactoseFreeFilterSet, 
              onChanged: (isChecked){
                setState(() {
                  _lactoseFreeFilterSet = isChecked;
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
              value: _vegetarianFilterSet, 
              onChanged: (isChecked){
                setState(() {
                  _vegetarianFilterSet = isChecked;
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
              value: _veganFilterSet, 
              onChanged: (isChecked){
                setState(() {
                  _veganFilterSet= isChecked;
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
      ),
    );
  }
}
