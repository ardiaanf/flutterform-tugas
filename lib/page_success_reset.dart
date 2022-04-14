import 'package:flutter/material.dart';
import 'page_sign_in.dart';

class SuccessResetPassword extends StatefulWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  State<SuccessResetPassword> createState() => _SuccessResetPasswordState();
}

class _SuccessResetPasswordState extends State<SuccessResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(),
        child: Center(
            child: Container(
          height: MediaQuery.of(context).size.height * 0.66,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Card(
            elevation: 2,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    "Password Reset!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  child: Text(
                    "Password changed successfully",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2021/08/09/23/26/verified-6534505__340.png",
                    width: 150,
                  ),
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: RaisedButton(
                      color: Colors.blue,
                      hoverColor: Colors.blue[400],
                      child: Center(
                          child: Text(
                        "CONTINUE",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                      onPressed: () {}),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Back to ",
                      style: TextStyle(fontSize: 12),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SignIn();
                          },
                        ));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
