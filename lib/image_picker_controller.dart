

import 'package:flutter_getx_tutorial/image_picker.dart';
import 'package:get/get.dart';

class ImagePickerController extends GetxController{

  RxString imagepath = ''.obs;

  Future getImage()async{
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSourse.camera);
    if(image != null){
      imagepath.value = image.path.toString();
    }
  }
}