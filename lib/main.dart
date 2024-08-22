// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//
//   List<Map<String, String>> myItems = [
//     {"symbol": "+"},
//     {"symbol": "-"},
//     {"symbol": "*"},
//     {"symbol": "/"},
//     {"symbol": "/"},
//     {"symbol": "/"},
//     {"symbol": "/"},
//     {"symbol": "/"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Layout Builder',
//           style: TextStyle(color: Colors.white, fontSize: 18),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Center(
//         child: Container(
//           height: 500,
//           width: 500,
//           color: Colors.pink,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4,
//                     childAspectRatio: 16 / 9,
//                   ),
//                   itemCount: myItems.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text(myItems[index]["symbol"]!),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize window manager
  await windowManager.ensureInitialized();

  // Set minimum window size for desktop
  WindowOptions windowOptions = WindowOptions(
    minimumSize: Size(334, 510),
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.setSize(const Size(1366, 768));
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600; // Threshold for mobile view

        return Scaffold(
          body: Center(
            child: Container(
              child: Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildGradientButton(context, 'Button 1'),
                  const SizedBox(height: 16, width: 16), // Space between buttons
                  buildGradientButton(context, 'Button 2'),
                  const SizedBox(height: 16, width: 16,),
                  buildGradientButton(context, 'Button 1'),
                  const SizedBox(height: 16, width: 16), // Space between buttons
                  buildGradientButton(context, 'Button 2'),
                  const SizedBox(height: 16, width: 16,),
                  buildGradientButton(context, 'Button 1'),
                  const SizedBox(height: 16, width: 16), // Space between buttons
                  buildGradientButton(context, 'Button 2'),
                  const SizedBox(height: 16, width: 16,),
                  buildGradientButton(context, 'Button 1'),
                  const SizedBox(height: 16, width: 16), // Space between buttons
                  buildGradientButton(context, 'Button 2'),
                  const SizedBox(height: 16, width: 16,),
                  buildGradientButton(context, 'Button 1'),
                  const SizedBox(height: 16, width: 16), // Space between buttons
                  buildGradientButton(context, 'Button 2'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildGradientButton(BuildContext context, String label) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF9F29BE), Color(0xFFE76EB3), Color(0xFFFFBA92)],
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          backgroundColor: Colors.transparent, // Background color is transparent
          shadowColor: Colors.transparent, // Remove shadow
          elevation: 0,
        ),
        onPressed: () {},
        child: Text(label),
      ),
    );
  }
}
