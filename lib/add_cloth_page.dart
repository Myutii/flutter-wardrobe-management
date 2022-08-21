import 'package:flutter/material.dart';

class AddClothPage extends StatefulWidget{
  const AddClothPage({Key? key}) : super(key: key);

  @override
  State<AddClothPage> createState() => _AddClothPageState();
}

class _AddClothPageState extends State<AddClothPage>{
  bool _radioValue1 = false;
  bool _handleRadioValueChange1 = false;
  String? gender;

  @override
  Widget build(BuildContext context){
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add New Cloth'),
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
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.add,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 33,top: 85),
              child: Text(
                'Congratulation,',
                style: TextStyle(
                    fontSize: 26
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 35,top: 120),
              child: Text(
                'You have a New Cloth!',
                style: TextStyle(
                    fontSize: 16
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    left: 35,
                    right: 35,
                    top: MediaQuery.of(context).size.height*0.21
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Describe Your Cloth',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        RadioListTile(
                          title: Text("Top"),
                          value: "top",
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("Bottom"),
                          value: "bottom",
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("Set"),
                          value: "set",
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("Other"),
                          value: "other",
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButton<String>(
                      items: <String>['Top','Bottom','Set','Other'].map((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value){
                        setState((){
                          value = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // ElevatedButton(
                    //   onPressed: (){debugPrint('Add Cloth Button');},
                    //   child: Text('Add Cloth!'),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}