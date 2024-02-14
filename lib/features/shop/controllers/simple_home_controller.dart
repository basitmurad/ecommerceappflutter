import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance  => Get.find();

  final carouselSliderIndicator= 0.obs;

  void updatePageIdicator(index){
    carouselSliderIndicator.value= index;
  }
}