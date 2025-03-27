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