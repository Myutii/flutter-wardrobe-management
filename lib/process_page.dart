import 'package:flutter/material.dart';
import 'package:wardrobe_management/cloth_page.dart';

class ProcessPage extends StatelessWidget{
  const ProcessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber[100],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_basket_outlined,
                      size: 36,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Laundry Basket'),
                  ],
                )
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber[100],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_laundry_service_outlined,
                      size: 36,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Wash'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber[100],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.light_mode_outlined,
                      size: 36,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Under the sun'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber[100],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.iron_outlined,
                      size: 36,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Iron'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}