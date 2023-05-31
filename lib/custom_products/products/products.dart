class Product {
  final String id;
  final String title;
  final String category;
  final String description;
  final String price;
  final String imagePath;
  bool checker = false;

  Product(this.id, this.title, this.category, this.description, this.price, this.imagePath);
}

final products = [
  Product("01", "Bose QC-700", Category.mobile.name, "Over Ear, Wireless Bluetooth Headphones with Built-In Microphone", "1300\$", "assets/images/img_mini_yonmacha.png"),
  Product("02", "Bose QC-700", Category.mobile.name, "Over Ear, Wireless Bluetooth Headphones with Built-In Microphone", "1000\$", "assets/images/img_headphone_mini_product.png"),
  Product("03", "Bose QC-700", Category.mobile.name, " Apple ", "800\$", "assets/images/img_headphone_mini_product.png"),
  Product("04", "Bose QC-700", Category.mobile.name, "Honor", "300\$", "assets/images/img_headphone_mini_product.png"),
  Product("05", "Bose QC-700", Category.mobile.name, "Apple", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("06", "Iphone 12", Category.headphones.name, "Apple", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("07", "Iphone 5", Category.mobile.name, "Apple", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("08", "Iphone 6", Category.headphones.name, "Apple", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("09", "Iphone 8", Category.mobile.name, "Apple", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("10", "Iphone 14 Pro Max", Category.mobile.name, "Apple", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("11", "Iphone 11", Category.headphones.name, "Apple", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("12", "Iphone X", Category.mobile.name, "Apple", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("13", "Samsung S20", Category.mobile.name, "Samsung", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("14", "Samsung S22", Category.mobile.name, "Samsung", "1300\$", "assets/images/img_headphone_mini_product.png"),
  Product("15", "Samsung S21", Category.mobile.name, "Samsung Galaxy","1300\$", "assets/images/img_headphone_mini_product.png"),
];


enum Category {
  headphones("Headphones"),
  mobile("Mobile"),
  mouseKeyboard("Mouse & Keyboard"),
  computer("Computer"),
  smartwatch("Smart Watch"),
  camera("Camera"),
  microphone('Microphone');

  const Category(this.title);

  final String title;
}