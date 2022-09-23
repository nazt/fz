import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class MyLoginBinding extends Binding {
  @override
  List<Bind> dependencies() {
    print("MyLoginBinding");
    return [
      Bind.lazyPut(() => MyLoginController()),
    ];
  }
}
