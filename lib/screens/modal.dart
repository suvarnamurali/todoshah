// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'To-Do App',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final TextEditingController taskNameController = TextEditingController();
//   final TextEditingController taskDescController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('To-Do App'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: taskNameController,
//               decoration: InputDecoration(
//                 labelText: 'Task Name',
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: taskDescController,
//               decoration: InputDecoration(
//                 labelText: 'Task Description',
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               // Add new task to Firestore
//               FirebaseFirestore.instance
//                   .collection('tasks')
//                   .add({
//                     'name': taskNameController.text,
//                     'description': taskDescController.text,
//                   });

//               // Clear the text fields
//               taskNameController.clear();
//               taskDescController.clear();
//             },
//             child: Text('Add Task'),
//           ),
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: FirebaseFirestore.instance
//                   .collection('tasks')
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 return ListView.builder(
//                   itemCount: snapshot.data.docs.length,
//                   itemBuilder: (context, index) {
//                     DocumentSnapshot task = snapshot.data.docs[index];

//                     return ListTile(
//                       title: Text(task['name']),
//                       subtitle: Text(task['description']),
//                       trailing: IconButton(
//                         icon: Icon(Icons.edit),
//                         onPressed: () {
//                           // Update task in Firestore
//                           FirebaseFirestore.instance
//                               .collection('tasks')
//                               .doc(task.id)
//                               .update({
//                                 'name': taskNameController.text,
//                                 'description': taskDescController.text,
//                               });
//                         },
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




