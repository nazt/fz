import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class MyLoginView extends GetView<MyLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) => Stack(
            children: [
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60)),
                      // place background image here
                      child: ClipOval(
                          child: Image.asset('assets/images/avatar.png',
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      // replace username here
                      child: Text(
                        "John Doe",
                        style: TextStyle(fontSize: 32.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                              (constraints.maxWidth > 412)
                                  ? (constraints.maxWidth * 0.5)
                                  : constraints.maxWidth,
                              50),
                        ),
                        child: Text("Continue"),
                        onPressed: () {
                          // place sign up function here
                          // Get.off(RootView());
                          // Get.toNamed(Routes.products);
                          // print("Hi");
                          // print("Current Route: ${Get.currentRoute}");
                          // print("hell world: " +
                          //     Routes.home +
                          //     " Current: " +
                          //     Get.currentRoute);
                          // Get.offNamed(Routes.home);
                          // controller.increment();
                          // print("Counter Value: ${controller.count}");
                          // Get.toNamed('/second');
                          Get.toNamed('/third');
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 32.0, right: 32, top: 8.0, bottom: 32),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          minimumSize: Size(
                              (constraints.maxWidth > 412)
                                  ? (constraints.maxWidth * 0.5)
                                  : constraints.maxWidth,
                              50),
                        ),
                        child: Text("Sign in with another account"),
                        onPressed: () {
                          // place sign up function here
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

// class MyLoginView extends StatefulWidget {
//   MyLoginView({Key? key}) : super(key: key);

//   @override
//   _MyLoginViewState createState() => _MyLoginViewState();
// }

// class _MyLoginViewState extends State<MyLoginView> {
//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent, // transparent status bar
//         systemNavigationBarColor: Colors.black, // navigation bar color
//         statusBarIconBrightness: Brightness.dark, // status bar icons' color
//         systemNavigationBarIconBrightness:
//             Brightness.dark, //navigation bar icons' color
//       ),
//       child: Scaffold(
//         body: LayoutBuilder(
//           builder: (context, constraints) => Stack(
//             children: [
//               Container(
//                 width: constraints.maxWidth,
//                 height: constraints.maxHeight,
//                 child: Image.asset(
//                   'assets/images/placeholder.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Center(
//                 child: Container(
//                   padding: EdgeInsets.symmetric(horizontal: 32.0),
//                   child: Column(
//                     children: [
//                       Spacer(),
//                       Container(
//                         width: (constraints.maxWidth > 412)
//                             ? ((constraints.maxWidth * 0.5))
//                             : (constraints.maxWidth),
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey.shade200),
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(6.0)),
//                         child: TextFormField(
//                           textAlign: TextAlign.center,
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Your Email',
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 8.0),
//                       Container(
//                         width: (constraints.maxWidth > 412)
//                             ? ((constraints.maxWidth * 0.5))
//                             : (constraints.maxWidth),
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey.shade200),
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(6.0)),
//                         child: TextFormField(
//                           textAlign: TextAlign.center,
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Your Password',
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(vertical: 16.0),
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             minimumSize: Size(
//                                 (constraints.maxWidth > 412)
//                                     ? ((constraints.maxWidth * 0.5))
//                                     : (constraints.maxWidth),
//                                 50),
//                           ),
//                           child: Text("Sign in"),
//                           onPressed: () {
//                             // place sign in function here
//                             print("hello world");
//                             // Get.toNamed(Routes.home);
//                             Get.put(Routes.home);
//                           },
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(16.0),
//                         child: GestureDetector(
//                           child: Text("Don't have an account ? Signup"),
//                           onTap: () {
//                             // place signup function here
//                           },
//                         ),
//                       ),
//                       SizedBox(height: 16.0),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
