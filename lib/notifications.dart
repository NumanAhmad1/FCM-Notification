// import 'dart:convert';

// import 'package:app_settings/app_settings.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// import 'notificationScreen.dart';

// class FirebaseNotification {
//   final firebaseMessage = FirebaseMessaging.instance;
//   final localNotification = FlutterLocalNotificationsPlugin();

//   getNotificationPermission(context) async {
//     final setting = await firebaseMessage.requestPermission(
//       announcement: true,
//       provisional: true,
//       criticalAlert: true,
//       carPlay: true,
//     );

//     if (setting.authorizationStatus == AuthorizationStatus.authorized) {
//     } else if (setting.authorizationStatus == AuthorizationStatus.provisional) {
//     } else {
//       AppSettings.openAppSettings(type: AppSettingsType.notification);
//     }
//     getToken();
//     initPushNotification(context);
//     showNotification(context);
//   }

//   initPushNotification(context) async {
//     await firebaseMessage
//         .getInitialMessage()
//         .then((value) => handleMessage(value, context));

//     FirebaseMessaging.onMessageOpenedApp.listen((event) {
//       handleMessage(event, context);
//     });

//     FirebaseMessaging.onBackgroundMessage(
//         (message) => handleMessage(message, context));
//   }

//   handleMessage(RemoteMessage? message, context) {
//     if (message == null) {
//       return;
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => NotificationScreen(
//             message: message,
//           ),
//         ),
//       );
//     }
//   }

//   initializeLocalNotification(message, context) async {
//     AndroidInitializationSettings androidSetting =
//         const AndroidInitializationSettings('@mipmap/ic_launcher');
//     DarwinInitializationSettings iosSetting =
//         const DarwinInitializationSettings();

//     final setting =
//         InitializationSettings(android: androidSetting, iOS: iosSetting);

//     await localNotification.initialize(
//       setting,
//       onDidReceiveNotificationResponse: (payLoad ) {
//        handleMessage(message, context);
       
//       },
//       onDidReceiveBackgroundNotificationResponse: (payLoad) {
//         print(payLoad.payload);
//         debugPrint('this is notification response: $payLoad');
//       },
//     );
//   }

//   showNotification(context) async {
//     FirebaseMessaging.onMessage.listen((message) {
//       final data = message.notification;
//       print(data!.title.toString());
//       print(data!.body.toString());

      
//     AndroidNotificationDetails androidDetail =
//         const AndroidNotificationDetails('channel_Id', 'channelName',);
//     DarwinNotificationDetails iosDetail = const DarwinNotificationDetails();
//     final details = NotificationDetails(android: androidDetail, iOS: iosDetail);
//      localNotification.show(
//       0,
//       data!.title.toString(),
//       data.body.toString(),
//       details,
//     );

//     initializeLocalNotification(message, context);
    
//      });
//   }

//   getToken() async {
//     final token = await firebaseMessage.getToken();

//     print('Token: $token');
//   }

  
// }
