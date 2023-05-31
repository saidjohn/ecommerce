class CustomCategories {
   String categoryName;
   String iconPath;

   CustomCategories({required this.categoryName, required this.iconPath});
}

List<CustomCategories> categories = [
   CustomCategories(categoryName: 'Headphone', iconPath: 'assets/icons/ic_headphone.png'),
   CustomCategories(categoryName: 'Mobile', iconPath: 'assets/icons/ic_mobile.png'),
   CustomCategories(categoryName: 'Mouse & Keyboard', iconPath: 'assets/icons/ic_mouseKey.png'),
   CustomCategories(categoryName: 'Computer', iconPath: 'assets/icons/ic_computer.png'),
   CustomCategories(categoryName: 'SmartWatch', iconPath: 'assets/icons/ic_smartwatch.png'),
   CustomCategories(categoryName: 'Camera', iconPath: 'assets/icons/ic_camera.png'),
   CustomCategories(categoryName: 'Microphone', iconPath: 'assets/icons/ic_microphone.png'),
];