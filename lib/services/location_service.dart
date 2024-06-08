// import 'package:flutter/material.dart';
//
//
// class LocationPermissionWidget extends StatefulWidget {
//   @override
//   _LocationPermissionWidgetState createState() => _LocationPermissionWidgetState();
// }
//
// class _LocationPermissionWidgetState extends State<LocationPermissionWidget> {
//   PermissionStatus _permissionStatus;
//
//   @override
//   void initState() {
//     super.initState();
//     _checkLocationPermission();
//   }
//
//   Future<void> _checkLocationPermission() async {
//     PermissionStatus status = await Permission.location.status;
//     setState(() {
//       _permissionStatus = status;
//     });
//   }
//
//   Future<void> _requestLocationPermission() async {
//     PermissionStatus status = await Permission.location.request();
//     setState(() {
//       _permissionStatus = status;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           _permissionStatus.toString(),
//           style: TextStyle(fontSize: 20),
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: _requestLocationPermission,
//           child: Text('Request Location Permission'),
//         ),
//       ],
//     );
//   }