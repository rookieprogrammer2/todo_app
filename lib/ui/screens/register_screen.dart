import 'package:flutter/material.dart';
import 'package:todo_app/widgets/text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const routeName = "register_screen";
  bool obscureText() {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            "assets/images/register_background.png",
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.1, vertical: height * 0.3),
            child: Column(
              children: [
                MyTextFormField(label: "E-mail", keyboardType: TextInputType.emailAddress),
                MyTextFormField(label: "Password", isObscured: true),
                MyTextFormField(label: "Confirm Password", isObscured: true),
                SizedBox(height: height *0.1,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: Colors.indigoAccent,
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                      child: const Text("Create Account"),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
