import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const int itemCount = 20;
class SettingsPage extends StatelessWidget{
  final apiUrl = "https://reqres.in/api/users?per_page=15";
  const SettingsPage({Key? key}) : super(key: key);

  // Future<List<dynamic>> _fecthDataUsers() async {
  //   var result = await http.get("https://reqres.in/api/users?per_page=15");
  //   return json.decode(result.body)['data'];
  // }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar GET HTTP'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          // future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        NetworkImage(snapshot.data[index]['avatar']),
                      ),
                      title: Text(snapshot.data[index]['first_name'] + " " + snapshot.data[index]['last_name']),
                      subtitle: Text(snapshot.data[index]['email']),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}