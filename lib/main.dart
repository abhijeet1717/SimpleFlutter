// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//     body: const Center(
//         child: Text('My Page!'),
//       ),
//       drawer: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('Item 2'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myntra'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.diamond,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(''),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('Myntra Drawer'),
            ),
            ListTile(
              title: const Text('Men'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Women'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Myntra Insider'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  // const SecondRoute({super.key});
  const SecondRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(""),
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.png'),
              Image.asset('assets/images/logo.png'),
              Image.asset('assets/images/logo.png'),
              Image.asset('assets/images/logo.png'),
              Image.asset('assets/images/logo.png'),
              Image.asset('assets/images/logo.png'),
              Image.asset('assets/images/logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}
// image: new AssetImage('assets/images/logo.png'),