## 🍽️ Recipe App
Welcome to the Recipe App – your ultimate culinary companion! This app is designed to make cooking fun and easy by providing you with a vast collection of recipes right at your fingertips. Whether you're a seasoned chef or a kitchen novice, the Recipe App has something for everyone. Dive in and discover delicious recipes that you can like, rate, and enjoy!

## ✨ Features
📝 Recipe List: Browse through a variety of mouth-watering recipes.

🔍 Explore: Discover new and exciting recipes to try.

❤️ Favorites: Save your favorite recipes for quick access.

📊 Ratings & Likes: Rate recipes and see what others love.

📱 Local Storage: Keep your recipes available offline.

## 🚀 Installation
Get started with the Recipe App in just a few steps:

Clone the repository:

    git clone https://github.com/Dhawansumit/reciepe_app.git
    cd recipe_app
    
Install dependencies:

    flutter pub get
    flutter pub run build_runner build
    
Run the app:

    flutter run
    
🏗️ Project Structure

    lib/
    ├── data/
    │   ├── models/
    │   │   └── recipe_model.dart
    │   ├── providers/
    │   │   └── recipe_provider.dart
    │   ├── repositories/
    │   │   └── recipe_repository.dart
    ├── domain/
    │   ├── entities/
    │   │   └── recipe_entity.dart
    │   ├── usecases/
    │   │   └── get_recipes_usecase.dart
    │   └── repositories/
    │       └── recipe_repository_interface.dart
    ├── presentation/
    │   ├── bindings/
    │   │   └── initial_binding.dart
    │   ├── controllers/
    │   │   └── recipe_controller.dart
    │   ├── pages/
    │   │   ├── home_page.dart
    │   │   ├── explore_page.dart
    │   │   ├── favorite_page.dart
    │   │   ├── account_page.dart
    │   │   ├── main_page.dart
    │   │   ├── recipe_detail_bottom_sheet.dart
    │   │   └── welcome_page.dart
    │   └── widgets/
    │       └── recipe_card.dart
    ├── routes/
    │   └── app_router.dart
    └── main.dart
    
## 📦 Packages Used
GetX: Efficient state management and dependency injection.
AutoRoute: Smooth and declarative routing.
Sqflite: Reliable local storage.
JsonAnnotation: Easy JSON serialization and deserialization.
BuildRunner & JsonSerializable: Automated code generation.

##  🛠️ Implementation Details
**State Management with GetX**
GetX is the backbone of our state management, providing efficient handling of app state and dependency injection. The RecipeController fetches recipes, updates likes, and manages ratings effortlessly.

**Navigation with AutoRoute**
Experience seamless navigation with AutoRoute. This package allows for a clean, declarative approach to routing, ensuring a smooth user experience.

**Local Storage with Sqflite**
Never lose your favorite recipes with Sqflite local storage. Recipes are stored in a SQLite database, initialized with data from a JSON file on first run.

**Clean Architecture**
The project adheres to Clean Architecture principles, ensuring a robust, scalable, and maintainable codebase. The architecture is divided into three layers: Data, Domain, and Presentation.

## 🎉 Usage
Home Screen: Browse the list of recipes. Tap on a recipe to view details.
Recipe Detail: View recipe details in an interactive bottom sheet. Like and rate your favorite recipes.
Explore, Favorite, Account: Additional pages for exploring new recipes, viewing favorites, and managing your account.
