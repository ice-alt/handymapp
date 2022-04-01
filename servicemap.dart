// import 'package:flutter/material.dart';
// import 'package:flutter_handymappisioma/services.dart';
//
// import 'bookservice.dart';
//
// class ServiceDetail extends StatelessWidget {
//   final ServiceDataModel serviceDataModel;
//
//   const ServiceDetail({Key? key, required this.serviceDataModel})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(serviceDataModel.name),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             serviceDataModel.desc,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => ServiceProfile()));
//               },
//               child: Text("Location replacement")),
//         ],
//       ),
//     );
//   }
// }
