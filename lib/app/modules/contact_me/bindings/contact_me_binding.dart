import 'package:get/get.dart';

import '../controllers/contact_me_controller.dart';

class ContactMeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactMeController>(
      () => ContactMeController(),
    );
  }
}
