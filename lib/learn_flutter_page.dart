import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget{
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage>{
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading:  IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: (){
              debugPrint('Icon Button');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child : Column(
          children: [
            Image.asset('assets/logo1.png'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all((10.0)),
              padding: const EdgeInsets.all((10.0)),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child : Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: (){
                debugPrint('Elevated Button');
              },
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: (){
                debugPrint('Outlined Button');
              },
              child: Text('Outlined Button'),
            ),
            TextButton(
              onPressed: (){
                debugPrint('Text Button');
              },
              child: Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (){
                debugPrint('This is teh row');
              },
              child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text(
                      'Row widget'
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool){
                setState((){
                  isSwitch = newBool;
                });
              }
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool){
                setState((){
                  isCheckbox = newBool;
                });
              },
            ),
            Image.network('https://wallpaperaccess.com/full/1909531.jpg'),
            Image.network('https://img.icons8.com/color/96/000000/wardrobe--v2.png')
          ],
        ),
      ),
    );
  }
}