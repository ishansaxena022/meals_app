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