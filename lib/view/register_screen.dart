import 'package:flutter/material.dart';
import 'package:flutter_login_register/utils/routes.dart';
import 'package:flutter_login_register/widgets/custom_button.dart';
import 'package:flutter_login_register/widgets/custom_form_field.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Form(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(40),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: mediaQuery.size.height / 3,
                  child: Icon(
                    Icons.tablet_android,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFormField(
                        controllers: textEditingController,
                        labelText: "User Name",
                        hintText: "Enter User name",
                        hintColor: Colors.white,
                        textColor: Colors.black,
                        obscure: false)
                    .getCustomForm(),
                CustomFormField(
                        controllers: textEditingController,
                        labelText: "Email",
                        hintText: "abc@mail.com",
                        hintColor: Colors.white,
                        textColor: Colors.black,
                        obscure: false)
                    .getCustomForm(),
                CustomFormField(
                        controllers: textEditingController,
                        labelText: "Password",
                        hintText: "Password",
                        hintColor: Colors.white,
                        textColor: Colors.black,
                        obscure: true)
                    .getCustomForm(),
                 CustomFormField(
                        controllers: textEditingController,
                        labelText: "RePassword",
                        hintText: " Enter Password Again",
                        hintColor: Colors.white,
                        textColor: Colors.black,
                        obscure: true)
                    .getCustomForm(),
                SizedBox(height: 20,),
                CustomButton(text: "Register", size: mediaQuery.size.width/1.5, clickedFun: (){}),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Already member ?", style: TextStyle(
                      color: Colors.white
                    ),),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(AppRoutes.authLogin);
                      },
                      child: Text("Login Here", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
