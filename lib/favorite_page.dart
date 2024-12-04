import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/favorite_controller.dart';
import 'package:get/get.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  FavoriteController controller = Get.put(FavoriteController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FavoritePage') ,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.fruitList.length,
          itemBuilder:(context ,index){
            return Card(
              child: ListTile(
                onTap: () {
                  if (controller.tempFruitList.contains(
                      controller.fruitList[index].toString())) {
                    controller.removeFromFavorite(
                        controller.fruitList[index].toString());
                  } else {
                    controller.addToFavorite(
                        controller.fruitList[index].toString());
                  }

                },
                title: Text(controller.fruitList[index].toString()),
                trailing: Obx(() => Icon(Icons.favorite,
                  color: controller.tempFruitList.contains(controller.fruitList[index].toString())? Colors.red: Colors.grey,),)
              ),
            );
          }
      ),
    );
  }
}
