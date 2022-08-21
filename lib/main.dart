import 'package:flutter/material.dart';
import 'package:wardrobe_management/settings_page.dart';
import 'package:wardrobe_management/wardrobe_page.dart';
import 'package:wardrobe_management/add_cloth_page.dart';
import 'package:wardrobe_management/process_page.dart';
import 'package:wardrobe_management/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget{
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>{
  int currentPage = 0;
  List<Widget> pages = [
    WardrobePage(),
    ProcessPage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Wardrobe Management'),
        actions: [
          IconButton(
            onPressed: (){
              debugPrint('Icon Button');
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return const LoginPage();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.person_outline_rounded,
              size: 28,
            ),
          ),
        ],
      ),
      body: pages[currentPage],
      floatingActionButton:
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width - 30, 40),
              ),
              onPressed: (){
                debugPrint('Elevated Button');
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context){
                        return const AddClothPage();
                      }
                  ),
                );
              },
              child: Text(
                'Have a new cloth?',
                style: const TextStyle(
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
      // FloatingActionButton(
      //   onPressed: (){
      //     Navigator.of(context).push(
      //       MaterialPageRoute(
      //         builder: (BuildContext context){
      //           return const AddClothPage();
      //         },
      //       ),
      //     );
      //   },
      //   child: Icon(Icons.add),
      // ),
      bottomNavigationBar: NavigationBar(
        destinations: const[
          NavigationDestination(icon: Icon(Icons.door_sliding), label: 'Wardrobe'),
          NavigationDestination(icon: Icon(Icons.local_laundry_service), label: 'Process'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onDestinationSelected: (int index){
          setState((){
            currentPage = index;
          });
        },

        selectedIndex: currentPage,
      ),
    );
  }
}