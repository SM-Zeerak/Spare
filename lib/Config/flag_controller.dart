import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';


class FlagController extends GetxController{
  RxString color1 = "".obs ;
  RxString color2 = "".obs;
  RxString color3 = "".obs;


  void ColorChange(){
    if (color1.isEmpty ){
      color2 = "clo".obs;
    }
  }



}