

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../app_state.dart';
import '../main.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  NotificationService() {
    initializeFirebaseMessaging();
    initializeLocalNotifications();
  }

  void initializeFirebaseMessaging() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Display notification when a message is received while the app is in the foreground
      showNotification(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // Handle the notification tap when the app is opened from a terminated or background state
      handleNotificationTap(message.data);
    });
  }

  void initializeLocalNotifications() {
    final AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');
    final InitializationSettings initializationSettings =
    InitializationSettings(android: initializationSettingsAndroid);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> requestPermissions() async {
    FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: false,
      sound: true,
    ).then((settings) {
      print('User granted permission: ${settings.authorizationStatus}');
    });
  }

  Future<String?> getToken() async {
    try {
      String? token = await FirebaseMessaging.instance.getToken();
      print("FCM Token: $token");
      return token;
    } catch (e) {

      print("Failed to get FCM token: $e");
      return null;
    }
  }

  Future<void> showNotification(RemoteMessage message) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      ' channel id',
      ' channel name',
      importance: Importance.max,
      priority: Priority.high,
      enableVibration: true,
      playSound: true,
      enableLights: true,

      ticker: 'ticker',
    );
    var platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0,
      message.notification!.title,
      message.notification!.body,
      platformChannelSpecifics,
      payload: 'item x',
    );
  }



  void handleNotificationTap(Map<String, dynamic> data) {
    // Extract the 'dl' value from the data object
    String? dlValue = data['dl'];

    if (dlValue != null) {
      print("dl value from notification data: $dlValue");
      // Add your custom action based on the 'dl' value here

      navigateToScreen(dlValue);
    } else {
      print("No 'dl' value found in notification data");
    }
  }

  void navigateToScreen(String dlValue) {
    if (dlValue == "main_details_notice") {
      print("Navigating to the main details screen...");

      //   if(MainModel.deviceOwnerModel.token != null ) {
      //     FFAppState appState = FFAppState();
      //     appState.update(() {
      //       appState.useGoRouter = true;
      //     });
      //     navigatorKey.currentState?.pushNamed('/homePage');
      //     // Navigate to the corresponding screen in your app
      //   }
      // } else {
      //   print("Unknown 'dl' value: $dlValue");
      // }
    }
  }
}

