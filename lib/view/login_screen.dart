import 'package:flutter/material.dart';
import 'package:flutter_login_register/utils/routes.dart';
import 'package:flutter_login_register/widgets/custom_button.dart';
import 'package:flutter_login_register/widgets/custom_form_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _mailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: mediaQuery.size.height / 3,
                child: Icon(
                  Icons.tablet_android,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              CustomFormField(
                      controllers: _mailController,
                      labelText: "Email",
                      hintText: "abc@mail.com",
                      hintColor: Colors.white,
                      textColor: Colors.black,
                      obscure: false)
                  .getCustomForm(),
              CustomFormField(
                      controllers: _passwordController,
                      labelText: "Password",
                      hintText: "password",
                      hintColor: Colors.white,
                      textColor: Colors.black,
                      obscure: true)
                  .getCustomForm(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget password",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                  text: "SignIn",
                  size: mediaQuery.size.width / 1.5,
                  clickedFun: () {}),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Not a member ?",
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutes.authRegister);
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
