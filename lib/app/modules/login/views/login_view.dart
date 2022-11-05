import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://media.tenor.com/rmDIxA3_54AAAAAC/night-moon.gif',
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: 260,
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        child: Text(
                          'id',
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.left,
                        )),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.cyan),
                            ),
                          ),
                          style: TextStyle(color: Colors.grey),
                        )),
                    Container(
                        width: double.infinity,
                        child: Text(
                          'password',
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.left,
                        )),
                    Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.cyan),
                            ),
                          ),
                          style: TextStyle(color: Colors.grey),
                        )),
                    Container(
                      width: double.infinity,
                        height: 40,
                        margin: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: MaterialButton(
                          onPressed: controller.login,
                          child: Center(
                            child: Text("LOGIN",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
