


import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


// Background message handler for when the app is in the background or terminated
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // You can log or process the message data here
  print('Handling a background message: ${message.messageId}');

  // Initialize the notification plugin to show notifications in background/terminated states
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid =
  AndroidInitializationSettings('@mipmap/ic_launcher');



  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: DarwinInitializationSettings(),
  );

  flutterLocalNotificationsPlugin.initialize(initializationSettings);

  // Display notification manually
  var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
    'custom_channel_id1',
    'Custom Sound Channel2',
    importance: Importance.max,
    priority: Priority.high,
    enableVibration: true,
    playSound: true,
    sound: RawResourceAndroidNotificationSound('res_notification'),
    enableLights: true,
    channelShowBadge: true,
    ticker: 'ticker',
  );



  var platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: const DarwinNotificationDetails(
     // sound: 'res_notification.aiff', // Ensure correct sound format for iOS
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    ),
  );

  await flutterLocalNotificationsPlugin.show(
    0,
    message.notification?.title ?? 'Background Notification',
    message.notification?.body ?? 'You have received a new message.',
    platformChannelSpecifics,
    payload: 'background_payload',
  );
}


class NotificationService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  NotificationService() {
    initializeFirebaseMessaging();
    initializeLocalNotifications();
    requestPermissions();
  }

  void initializeFirebaseMessaging() {
    // Set up background message handler
    // Set up background message handler
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Display notification when a message is received while the app is in the foreground
      showNotification(message);
    });
   

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // Handle notification tap when app is opened from background or terminated state
      showNotification(message);
    });
  }

  void initializeLocalNotifications() {
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsDarwin =
    DarwinInitializationSettings(
      onDidReceiveLocalNotification: onDidReceiveLocalNotification, // Handler for foreground notifications on iOS
    );

    const InitializationSettings initializationSettings =
    InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
     // onSelectNotification: selectNotification,  // For handling notification taps
    );
  }

  static Future onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    // Handle local notification for iOS in foreground
    print('iOS local notification: $title');
  }

  Future selectNotification(String? payload) async {
    // Handle notification tap
   // print('Notification tapped with payload: $payload');
  }

  Future<void> requestPermissions() async {
    NotificationSettings settings =
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: true,
      provisional: false,
      sound: true,
    );

    print('User granted permission: ${settings.authorizationStatus}');
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
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'channel ida',
      'channel name1',
      importance: Importance.max,
      priority: Priority.high,
      enableVibration: true,
      playSound: true,
      sound: RawResourceAndroidNotificationSound('res_notification'),
      enableLights: true,
      channelShowBadge: true,
      ticker: 'ticker',

    );

    var iosPlatformChannelSpecifics = const DarwinNotificationDetails(
      sound: 'res_notification.aiff', // Use correct sound format for iOS
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iosPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      message.notification?.title ?? 'Notification',
      message.notification?.body ?? 'You have received a new message.',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }
}
