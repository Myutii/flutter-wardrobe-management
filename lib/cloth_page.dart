import 'package:flutter/material.dart';

class ClothPage extends StatefulWidget{
  const ClothPage({Key? key}) : super(key: key);

  @override
  State<ClothPage> createState() => _ClothPageState();
}

const int itemCount = 2;
// List<Widget> tabs = [
//   'Top',
//   'Bottom',
//   'Set',
//   'Other',
// ];

class _ClothPageState extends State<ClothPage>{
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Wardrobe'),
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
      body: CustomScrollView(
        slivers: [
          _FlexibleSpaceBarHeader(),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index){
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('HAHAH'),
                );
              },
              childCount: 4,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 2.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              child: Text('Grid Header', style: TextStyle(fontSize: 24)),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 1,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
            ],
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
            ],
          ),
        ],
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Wardrobe'),
    //     automaticallyImplyLeading: false,
    //     leading:  IconButton(
    //       onPressed: (){
    //         Navigator.of(context).pop();
    //       },
    //       icon: const Icon(Icons.arrow_back_ios),
    //     ),
    //     actions: [
    //       IconButton(
    //         onPressed: (){
    //           debugPrint('Icon Button');
    //         },
    //         icon: const Icon(
    //           Icons.info_outline,
    //         ),
    //       ),
    //     ],
    //     bottom: TabBar(
    //       indicatorColor: Colors.white,
    //       isScrollable: true,
    //       tabs: [
    //         for (final tab in tabs) Tab(text: tab),
    //       ],
    //     ),
    //   ),
    //   body: SingleChildScrollView(
    //     child : Column(
    //       children: [
    //         Container(
    //           padding: const EdgeInsets.all((20.0)),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text('Top'),
    //               Text('Bottom'),
    //               Text('Set'),
    //               Text('Other')
    //             ],
    //           ),
    //         ),
    //         TabBarView(
    //           children: [
    //             Center(
    //               child: Text('Top'),
    //             ),
    //             Center(
    //               child: Text('Bottom'),
    //             ),
    //             Center(
    //               child: Text('Set'),
    //             ),
    //             Center(
    //               child: Text('Other'),
    //             ),
    //           ],
    //         ),
    //         Divider(
    //           color: Colors.black,
    //         ),
    //         ListTile(
    //           title: Text('Baju Baru'),
    //           leading: const Icon(Icons.person),
    //           trailing: Checkbox(
    //             value: isCheckbox,
    //             onChanged: (bool? newBool){
    //               setState((){
    //                 isCheckbox = newBool;
    //               });
    //             },
    //           ),
    //         ),
    //         ListTile(
    //           title: Text('Baju Baru'),
    //           leading: const Icon(Icons.person),
    //           trailing: Checkbox(
    //             value: isCheckbox,
    //             onChanged: (bool? newBool){
    //               setState((){
    //                 isCheckbox = newBool;
    //               });
    //             },
    //           ),
    //         ),
    //         ListTile(
    //           title: Text('Baju Baru'),
    //           leading: const Icon(Icons.person),
    //           trailing: Checkbox(
    //             value: isCheckbox,
    //             onChanged: (bool? newBool){
    //               setState((){
    //                 isCheckbox = newBool;
    //               });
    //             },
    //           ),
    //         ),
    //         ListTile(
    //           title: Text('Baju Baru'),
    //           leading: const Icon(Icons.person),
    //           trailing: Checkbox(
    //             value: isCheckbox,
    //             onChanged: (bool? newBool){
    //               setState((){
    //                 isCheckbox = newBool;
    //               });
    //             },
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //       primarySwatch: Colors.amber
    //   ),
    //   title: 'Flutter Demo',
    //   home: DefaultTabController(
    //     length: tabs.length,
    //     child: Scaffold(
    //       appBar: AppBar(
    //         title: Text('Wardrobe'),
    //         automaticallyImplyLeading: true,
    //         leading:  IconButton(
    //               onPressed: (){
    //                 Navigator.of(context).pop();
    //               },
    //               icon: const Icon(Icons.arrow_back_ios),
    //             ),
    //         bottom: TabBar(
    //           indicatorColor: Colors.white,
    //           isScrollable: true,
    //           tabs: [
    //             for (final tab in tabs) Tab(text: tab),
    //           ],
    //         ),
    //       ),
    //       // body: TabBarView(
    //       //   children: [
    //       //     for (final tab in tabs)
    //       //       Center(
    //       //         child: ListView(
    //       //           padding: const EdgeInsets.all(16),
    //       //           children: [
    //       //             PaginatedDataTable(
    //       //               header: Text('Header Text'),
    //       //               rowsPerPage: 4,
    //       //               columns: [
    //       //                 DataColumn(label: Text('Header A')),
    //       //                 DataColumn(label: Text('Header B')),
    //       //                 DataColumn(label: Text('Header C')),
    //       //                 DataColumn(label: Text('Header D')),
    //       //               ],
    //       //               source: _DataSource('hello'),
    //       //             ),
    //       //           ],
    //       //         ),
    //       //       ),
    //       //   ],
    //       // ),
    //     ),
    //   ),
    // );
  }
}

class _FlexibleSpaceBarHeader extends StatelessWidget{
  const _FlexibleSpaceBarHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        stretchModes: const [StretchMode.zoomBackground],
        background: Stack(
          fit: StackFit.expand,
          // children: [
          //   BackgroundSliver(),
          //   Positioned(child: child)
          // ],
        ),
      ),
    );
  }
}