
import 'package:apiteste/app/controllers/PokemonControllers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'app/controllers/CharacterControllers.dart';


class ControllerBinding implements Bindings  {
  @override
  void dependencies(){
    Get.lazyPut<CharacterController>(() => CharacterController());
    Get.lazyPut<PokemonController>(() => PokemonController());
    // Get.lazyPut<ThemeController>(() => ThemeController());
  }

}