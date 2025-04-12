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
          SwitchListTile(
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
          )
        ],
      ),
    );
  }
}
