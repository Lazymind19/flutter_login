import 'package:flutter/material.dart';
import 'package:flutter_login_register/utils/routes.dart';
import 'package:flutter_login_register/widgets/custom_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(

                child: Container(
                  color: Colors.indigo,
                  child: Icon(
              Icons.tablet_android,
              size: 100,
              color: Colors.white,
            ),
                )),
            CustomButton(text: "Login", size: (mediaQuery.size.width / 1.5), clickedFun: (){
              Navigator.of(context).pushNamed(AppRoutes.authLogin);
            },),
            SizedBox(
              height: 15,
            ),
            CustomButton(text: "Register", size: (mediaQuery.size.width / 1.5), clickedFun: (){
              Navigator.of(context).pushNamed(AppRoutes.authRegister);
            }),
          ],
        ),
      ),
    );
  }
}
