import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Doctor_prescription/doctor_2prescription.dart';
import 'Doctor_prescription/doctor_pdf.dart';
import 'Doctor_prescription/doctor_prescription.dart';
import 'design/bottomnavigation.dart';
import 'design/dg1_design.dart';
import 'design/formscreen.dart';
import 'design/home.dart';
import 'design/ludogamemain.dart';
import 'design/vegetable_design.dart';
import 'firebasecrud/homescreen.dart';
import 'login.dart';


FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: 'AIzaSyDSzyJfSGmLvfL9Hiu4xDtdaZSWAsnui9g',
  appId: '1:909346981349:android:f2d0cd3b7309f0c43b9b0c',
  messagingSenderId: '909346981349',
  projectId: 'chatapp-74773',
);


void main() async {


  log("Firebase on");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    // await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    // await FirebaseCrashlytics.instance.setAutomaticSessionEnabled(true);
    options: firebaseOptions,
  );


  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


  log("Firebase App Check activated successfully 1");

  print('Firebase App Check activated successfully 2');
  log("Firebase App Check activated successfully 2");



  try{
    runApp(const MyApp());
  }
  //for appcheck and FirebaseCrashlytics both
  catch (e, stackTrace) {
    // Log the error for App Check
    log('Error activating Firebase App Check: $e');

    print('Error ===> $e');
  }


  // runApp(const MyApp());
}


// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: CrudHomeScreen(), ///crud using firebase
      // home: LudoGameMainScreen(), ///LudoGameMainScreen design
      // home: FormScreen(),
      home: DoctorPrescription2(), ///LudoGameMainScreen design
      // home: Doctor_Pdf(), ///LudoGameMainScreen design
      // home: Vegetable_Design(), ///Vegetable_Design design
      // home: HomeScreen(), ///homescreen for design
      // home: BottomNavigation(), ///bottomnavigation
      // home: DG_Diaray1_Screen(), ///design
      // home: Login(),///ChatApp
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
//





//
//
// ///firebase notification
//
// import 'dart:developer';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// import 'design/home.dart';
//
//
//
//
//
//
//
// FirebaseOptions firebaseOptions = FirebaseOptions(
//   apiKey: 'AIzaSyDSzyJfSGmLvfL9Hiu4xDtdaZSWAsnui9g',
//   appId: '1:909346981349:android:f2d0cd3b7309f0c43b9b0c',
//   messagingSenderId: '909346981349',
//   projectId: 'chatapp-74773',
// );
//
//
// // Background message handler (for terminated & background state)
// @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp(options: firebaseOptions);
//   log("Handling background message: ${message.messageId}");
// }
//
// // Initialize Local Notifications
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
// FlutterLocalNotificationsPlugin();
//
// Future<void> _setupLocalNotifications() async {
//   const AndroidInitializationSettings androidSettings =
//   AndroidInitializationSettings('@mipmap/ic_launcher');
//
//   const InitializationSettings initializationSettings =
//   InitializationSettings(android: androidSettings);
//
//   await flutterLocalNotificationsPlugin.initialize(initializationSettings);
// }
//
// // Show Local Notification
// Future<void> _showNotification(RemoteMessage message) async {
//   if (message.notification == null) return;
//
//   const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
//     'channel_id',
//     'App Notifications',
//     importance: Importance.high,
//     priority: Priority.high,
//   );
//
//   const NotificationDetails notificationDetails =
//   NotificationDetails(android: androidDetails);
//
//   await flutterLocalNotificationsPlugin.show(
//     0,
//     message.notification?.title ?? 'New Notification',
//     message.notification?.body ?? '',
//     notificationDetails,
//   );
// }
//
// void main() async {
//   print("hellow ----1");
//   log("Starting Firebase...");
//   WidgetsFlutterBinding.ensureInitialized();
//
//   print("hellow ----2");
//   try {
//     await Firebase.initializeApp(options: firebaseOptions);
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//     await _setupLocalNotifications(); // Initialize notifications
//     log("Firebase initialized successfully");
//
//     runApp(const MyApp());
//   } catch (e, stackTrace) {
//     log('Firebase initialization error: $e');
//     runApp(const ErrorApp());
//   }
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
//
//
//
// class _MyAppState extends State<MyApp> {
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
//
//   @override
//   void initState() {
//     super.initState();
//     _setupFCM();
//   }
//
//   Future<void> _setupFCM() async {
//     print("hellow ----3");
//     try {
//       print("hellow ----4");
//       // Request Notification Permission
//       NotificationSettings settings = await _firebaseMessaging.requestPermission(
//         alert: true,
//         badge: true,
//         sound: true,
//       );
//       log("Notification permissions: ${settings.authorizationStatus}");
//
//
//  // Get user role (chef or student)
//       SessionHelper sessionHelper = await SessionHelper.getInstance(context);
//       var userRole = sessionHelper.get(SessionHelper.USERTYPE); // Assume role is saved as 'chef' or 'student'
//
//       // Ensure only students subscribe to "all_students"
//       if (userRole == "1") {
//         await _firebaseMessaging.subscribeToTopic("all_students");
//         log("Student subscribed to topic: all_students");
//       } else {
//         await _firebaseMessaging.unsubscribeFromTopic("all_students"); // Ensure chefs are unsubscribed
//         log("Chef unsubscribed from topic: all_students");
//       }
//
//
//       // Get FCM Token (optional)
//       String? token = await _firebaseMessaging.getToken();
//       log("FCM Token: $token");
//
//       print("hellow ----6>>>$token");
//       // sessionHelper.put(SessionHelper.TOKEN, "$token");
//
//       // Listen for Token Refresh
//       _firebaseMessaging.onTokenRefresh.listen((newToken) {
//         log("Refreshed FCM Token: $newToken");
//       });
//
//       // Handle messages in foreground
//       FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//         log("Foreground message: ${message.notification?.title}");
//         _showNotification(message);
//       });
//
//       // Handle messages when the app is opened from a notification
//       FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//         log("Background message opened: ${message.notification?.title}");
//         _navigateToScreen(message);
//       });
//
//       // Handle messages when the app is terminated and opened from notification
//       RemoteMessage? initialMessage = await _firebaseMessaging.getInitialMessage();
//       if (initialMessage != null) {
//         log("Terminated message: ${initialMessage.notification?.title}");
//         _navigateToScreen(initialMessage);
//       }
//     } catch (e) {
//       log("FCM setup error: $e");
//     }
//   }
//
//   void _navigateToScreen(RemoteMessage message) {
//     log("Navigating to a specific screen...");
//     // Implement navigation logic here (Example: Navigate to chat screen)
//     Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Cafe Connect',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomeScreen(),
//     );
//   }
// }
//
// // Error Handling Screen
// class ErrorApp extends StatelessWidget {
//   const ErrorApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Initialization failed. Please restart the app.'),
//         ),
//       ),
//     );
//   }
// }
//
