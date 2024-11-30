import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
        centerTitle: true,
      ),
      body: Column(
        children: [
        Card(
          child: ListTile(
            title: Text('GetX Diolog Alert'),
            subtitle: Text('GetX diolog alert with getx'),
            onTap: (){
              Get.defaultDialog(
                title: 'Delete chat',
                titlePadding: EdgeInsets.only(top: 20),
                contentPadding: EdgeInsets.all(20),
               // middleText: 'Are you sure you want to delete this chat',
               confirm: TextButton(onPressed: (){
                // navigator!.pop(context);
                Get.back();
               }, child: Text('ok')),
                cancel: TextButton(onPressed: (){}, child: Text('Cancel')),
                content: Column(
                  children: [
                    Text('chandu'),
                    Text('chandu'),
                    Text('chandu'),
                    Text('chandu'),
                    Text('chandu'),
                    Text('chandu'),
                  ],
                )
              );
            },
          ),
        ),
          Card(
            child: ListTile(
              title: Text('GetX Buttom sheet'),
              subtitle: Text('GetX diolog alert with getx'),
              onTap: (){
                Get.bottomSheet(
                   Container(
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(21),
                     ),
                     child: Column(
                       children: [
                         ListTile(
                           leading: Icon(Icons.light_mode),
                           title: Text('Light mode'),
                           onTap: (){
                             Get.changeTheme(ThemeData.light());
                           },
                         ),
                         ListTile(
                           leading: Icon(Icons.dark_mode),
                           title: Text('Dark mode'),
                           onTap: (){
                             Get.changeTheme(ThemeData.dark());
                           },
                         )
                       ],
                     ),
                   )
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('Ravi Shankar Pradhan','One Mistake Game Over',
        icon: Icon(Icons.add),
          onTap: (snap){

          },
          mainButton: TextButton(onPressed: (){}, child: Text('Click')),
          backgroundColor: Colors.blue,
          snackPosition: SnackPosition.BOTTOM
        );
      }),
    );
  }
}
