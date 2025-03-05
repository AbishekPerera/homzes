# **Homzes - Flutter Mobile App**

## **Overview**

This is a Flutter-based mobile application that follows the provided Figma design and integrates Firebase for data retrieval. The project includes three screens, seamless navigation, and a structured Firebase setup.

## **Features**

✅ Fully implemented UI based on the Figma design  
✅ Firebase integration for retrieving and displaying property data  
✅ GetX for efficient state management  
✅ Navigation between screens with animation  
✅ Responsive UI for different screen sizes

## **Tech Stack**

- **Framework:** Flutter
- **State Management:** GetX
- **Database:** Firebase Firestore

## **Project Structure**

```
/lib
 ├── controllers/   # GetX controllers for state management
 ├── models/        # Data models
 ├── screens/       # UI screens
 ├── services/      # Firebase interaction logic
 ├── routes/         # Routing functions
 ├── theme/       # Reusable UI components
 ├── main.dart      # Application entry point
```

## **Installation & Setup**

1. **Clone the Repository**

   ```sh
   git clone https://github.com/AbishekPerera/homzes.git
   cd homzes
   ```

2. **Install Dependencies**

   ```sh
   flutter pub get
   ```

3. **Set Up Firebase**

   - Create a Firebase project
   - Enable Firestore Database
   - Add Firebase config files (`google-services.json` for Android, `GoogleService-Info.plist` for iOS) in the appropriate folders
   - Upload images to a CDN and store URLs in Firestore

4. **Run the Application**
   ```sh
   flutter run
   ```

## **Branches**

- **Main Branch:** Fully implemented project with Firebase integration.
- **UI-Implementation Branch:** Contains only the UI implementation.  
  🔗 [UI-Only Version](https://github.com/AbishekPerera/homzes/tree/ui-implementation)

## **Contributing**

Pull requests are welcome. For major changes, please open an issue first to discuss the proposed updates.

## **Contact**

📧 Email: abhishekperera77@gmail.com  
🔗 GitHub: [GitHub Profile](https://github.com/AbishekPerera)
