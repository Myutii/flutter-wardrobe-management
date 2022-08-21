import 'package:flutter/material.dart';
import 'package:wardrobe_management/cloth_page.dart';

class WardrobePage extends StatelessWidget{
  const WardrobePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child:
      Center(
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              size: 50,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context){
                      return const ClothPage();
                    },
                  ),
                );
              },
              child: Image.asset(
                'assets/wardrobe.png',
                width: 250,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 50,
            ),
          ],
        ),
      ),

    );
  }
}