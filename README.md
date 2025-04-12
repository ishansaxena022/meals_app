# Meals App

### 2 Getting started
- Instaling google fonts, and add font as default textTheme across the app.
- Also adding some other parameters in ThemeData().

### 3 Using GridView() to display items in a grid
- First, creating a `CategoriesScreen()` widget. Now setting up the layout in grid.
- Using `GridView()` to display elements in grid.

### 4 Widgets vs Screens
- Creating a class for `Category` element, with parameters id, title, & color.
- Adding dummy data model as dummy_data.dart 
- Moving all screen widgets like categories.dart to `screens` folder.
- Creating a widget `CategoryGridItem()` to `widgets` folder.

### 5 Displayig category items
- In `CategoryGridItem()`, aim is to return an item that shows, title & its color.
- Calling for **CategoryGridItem** in categories.dart, to populate the list with widget.

### 6 Making CategoryGridItem clickable
- Wrapping the `Container()` widget with `InkWell()` widget, to get functionalities like **onTap** , **onDoubleTap** & many more.
- `GestureDetector()` also provides many action listeners, but it lacks in giving visual feedback.

### 7 Adding meals data 
- Creating *meals.dart* screen widget to screen folder.
- Updating *dummy_data.dart* with file attached.
- Creating *meal.dart* as structure to models. File attached.

### 8 Displaying the meals data
- Initially printing the meal title from dummyMeals list in `dummy_data.dart`.
- Using ListView to show the list of meals initially.

### 9 Navigating to different screen
- On selecting the category, the meal screen should be open.
- So, by using the Navigator.push(), we pass the screen that would open upon tapping the category item.

### 10 Passing data to target screen
- Basically upon seletecting the category, the meals that come under the category is listed.
- Populating the filtered list as ```dummyMeals.where((meal)=> meal.categories.contains(category.id)).toList();```
- Here upon selecting the category, that particular category object is accepted to func. `_selectedCategory()`, then it is checked whether the category type is presented in the meal, if present, that meal is kept in the `filteredMeals` . 

### 11 Introduction Stack Widget
- The **Stack()** widget is used just like the **Column()** widget, where in this , the widgets listed generally overalap each other. The first widget added to it is the base widget.
- Using the FadeInImage() widget, to fade in easily between a transparent image(MemoryImage()) & the image fetched from the internet(NetworkImage()).

### 12 Improving MealItem widget
- Adding meta data like affordability, complexity and duration.
- Creating another widget as `MealItemTrait()` to pass icon and label for it. 
- 3 `MealItemTrait()` widgets are used to show to duration, complexity and affordability of the meal item, rather than hardcoding each widget.

### 13 Adding navigation to MealDetailsScreen
- Adding a new screen as `MealDetailsScreen()` widget.
- creating a func as _selectMeal() that would accept, context & meal, and pass the MealDetailsScreen to Naivator.push().
- Passing this functiont to each MealItem.

### 14 Improving the MealDetailScreen()
- Displaying the Ingredients, and its steps too.
- Use of `SingleChildScrollView` over `ListView` , since the former allows to aligned the content to center, while the other pushes content to left of the screen.

### 15 Adding Tab based navigation 
- Creating a new screen as `TabScreen()` widget in tab.dart The widget is StatefullWidget since, updation of the hinglighted icon and screen change is to be updated. 
- Two `BottomNavigationBarItem` items added (categories screen & favourites)
- `_selectPage(int index)` Function to change the active screen is used, in setState() function. 

### 16 Passing function through multiple levels of widgets 
- Aim was to pass the **_toggleMealFavouriteStatus()** func. from `TabScreen()` widget to `MealDetailScreen()` widget but they aren't connected directly.
- So, passing the function through `CategoriesScreen()` widget & `MealScreen()` widget.
- Follow the code for more.

### 17 Managing app wide state & data
- Passing the _favouriteMeals[] list to `MealScreen()` widget so that it could be used to display the favourite meals in the other tab.
- Also adding a **_showInfoMessgae()** function to display message upon tapping the IconButton on `MealDetailScreen()` to mark and un-mark any meal as favourite.

### 18 Adding a side drawer
- to add more functionalities for the app.
- Like adding a Meal option to directly open the `MealScreen()` or adding a filter option to filter out meals.

### 19 Closing the side drawer manually
- creating a func. as **_setScreen()** in `TabScreen()` and defining it to get 'meal' or 'filter' as parameter, to open the screen accordingly.
- Passing the values through a **onSelectScreen()** func. in `MainDrawer()` widget.
- Now, while the drawer is open, selecting the meals , eventually mean opening the `TabScreen()` , so using the *Navigator.of(context).pop()* func to pop out the current active widget i.e here the `MainDrawer()`

### 20 Adding a filter item
- First creating a new widget as `FilterScreen()` widget in screens as filter.dart.
- Then creating it as **StatefullWidget**. 
- Then adding the `SwitchListTile()` widget by flutter, to add items and switch all in a row togther.
- Its parameter *label* accepts bool value, *onChanged* accepts a func, *title* to add a text, *subtitle* to add a sub text, *activeColor* accepts color which tells that if the switch is active or not & *contentPadding* for spacing.
- a default value false is stored in _glutenFreeMeal, & then passed on to its SwitchListTile item so that initially it shows inactive.

### 21 Replacing the screen instead of pushing
- Adding `MainDrawer()` to the `FilterScreen()` page.
- When navigating through the screens using the navigation button, the stack of screen could be all accessed by it.
- Eg. if `FilterScreen()` is open & `TabScreen()` is accessed through the drawer, then by tapping back button , filter screen could be accessed back.
- It could be prevented by using the *pushReplacement()* instead of *push()*.
- Now, it is all users choice to add this feature or not.