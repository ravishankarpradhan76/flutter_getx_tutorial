import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'image_picker_controller.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}): super(key: key);

  @override
  State<ImagePicker> createState() => _ImagePickerState();


class _ImagePickerState extends State<ImagePicker> {

  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
