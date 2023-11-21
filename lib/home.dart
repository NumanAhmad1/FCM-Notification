// ignore_for_file: unnecessary_nullable_for_final_variable_declarations

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:notification/notifications.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver{
  // final notification = FirebaseNotification();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // notification.getNotificationPermission(context);
    WidgetsBinding.instance.addObserver(this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        debugPrint('App is Resumed');
        break;
      case AppLifecycleState.paused:
        debugPrint('App is Paused');
        break;
      
      case AppLifecycleState.inactive:
        debugPrint('App is Inactive');
        break;
      
      case AppLifecycleState.detached:
        debugPrint('App is Detached');
        break;
      
      case AppLifecycleState.hidden:
        debugPrint('App is Hidden');
        break;
      default:
    }
  }
  // File? selectedFile;
  // selectFromCamera()async{
  //   final picker = ImagePicker();

  //    XFile?  file = await picker.pickImage(source: ImageSource.camera);

  //    File selectedFile = File(file!.path);

  //    setState(() {
       
  //    });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('firebase Notifications'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // await FirebaseNotification().showNotification();
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          TextButton(onPressed: ()async {
            // await selectFromCamera();
          }, child: Text('Select')),
          TextButton(onPressed: ()async {
            // print(selectedFile);
          }, child: Text('Select')),
        ],
      ),
    );
  }
}
