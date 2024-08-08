import 'package:get/get.dart';

class PopUpController extends GetxController{
RxBool inVisiblecont1 = false.obs;
RxBool inVisiblecont2 = true.obs;


  void visiblecontainer(){
    if (inVisiblecont1.isTrue){
      inVisiblecont2.value = true;
      inVisiblecont1.value = false;
      
      print('true grey');
    } else {
      inVisiblecont2.value = true;
      inVisiblecont1.value = false;
      print('fasle grey');
    }
    // inVisiblecont1 = true.obs;
    print('Donor');
    
  }
   void visiblecontainer1(){
    
    if (inVisiblecont2.isFalse){
      inVisiblecont1.value = true;
      inVisiblecont2.value = false;
      print('true blue');
    } else {
      inVisiblecont1.value = true;
      inVisiblecont2.value = false;
      print('fasle blue');
    }
        print('NGO');
  }
  
}