// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
// WidgetsFlutterBinding.ensureInitialized();
// FirebaseApp.initializeApp();

// runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// return MaterialApp(
// title: 'E-commerce App',
// home: ProductPage(),
// );
// }
// }

// class ProductPage extends StatefulWidget {
// @override
// _ProductPageState createState() => _ProductPageState();
// }

// class _ProductPageState extends State<ProductPage> {
// String _imageUrl;
// final _productNameController = TextEditingController();
// final _productDescriptionController = TextEditingController();
// final _productPriceController = TextEditingController();

// Future<void> _pickImage() async {
// // Pick an image from the gallery
// final image = await ImagePicker.pickImage(source: ImageSource.gallery);
// // If the user doesn't pick an image, return
// if (image == null) {
//   return;
// }

// // Upload the image to Firebase Storage
// final storageRef = FirebaseStorage.instance.ref().child('products/${DateTime.now().millisecondsSinceEpoch}');
// await storageRef.putFile(image);

// // Get the image URL
// _imageUrl = await storageRef.getDownloadURL();

// // Update the state
// setState(() {});
// }

// @override
// Widget build(BuildContext context) {
// return Scaffold(
// appBar: AppBar(
// title: Text('Product Page'),
// ),
// body: Center(
// child: Column(
// children: [
// _imageUrl == null
// ? Text('No image selected.')
// : Image.network(_imageUrl),
// TextFormField(
// controller: _productNameController,
// decoration: InputDecoration(labelText: 'Product Name'),
// ),
// TextFormField(
// controller: _productDescriptionController,
// decoration: InputDecoration(labelText: 'Product Description'),
// ),
// TextFormField(
// controller: _productPriceController,
// decoration: InputDecoration(labelText: 'Product Price'),
// ),
// FloatingActionButton(
// onPressed: _pickImage,
// tooltip: 'Pick Image',
// child: Icon(Icons.add_a_photo),
// ),
// ],
// ),
// ),
// floatingActionButton: FloatingActionButton(
// onPressed: () {
// // Create a new product document in Firebase Firestore
// final productRef = FirebaseFirestore.instance.collection('products').doc();
// productRef.set({
// 'name': _productNameController.text,
// 'description': _productDescriptionController.text,
// 'price': _productPriceController.text,
// 'imageUrl': _imageUrl,
// });

//       // Navigate back to the home page
//       Navigator.pop(context);
//     },
//     tooltip: 'Add Product',
//     child: Icon(Icons.add),
//   ),
// );
// }}