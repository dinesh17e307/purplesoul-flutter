import 'package:flutter/material.dart';
import 'package:purple_soul/FlutterComponents/FlutterButton.dart';
import '../FlutterComponents/FlutterTextField.dart';
import 'package:localstorage/localstorage.dart';

class LoginPageComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageComponentState();
  }
}

class LoginPageComponentState extends State<LoginPageComponent> {
  var userName = '';
  var password = '';
  get children => null;
  var loginForm = {};
  var isErrorUserName = false;
  var isErrorPassword = false;
  final LocalStorage storage = new LocalStorage('localstorage_app');
  getLoginDetails(value) {
    print(value[0]);

    var key = value[1];
    var loginValue = value[0];
    this.setState(() {
      loginForm[key] = loginValue;
    });
    print(loginForm);
  }

  Loginhandler(context) {
    print('entered');

    print(loginForm);
    if ((loginForm['Username'] != null && loginForm['Password'] != null)) {
      var usernameRex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (!usernameRex.hasMatch(loginForm['Username'])) {
        this.setState(() {
          isErrorUserName = true;
        });
      } else {
        storage.setItem('username', loginForm['Username']);
        storage.setItem('password', loginForm['Password']);

        Navigator.of(context).pushReplacementNamed('/home');
      }
    } else {
      print('helooo');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please fill the login credentials',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          backgroundColor: Colors.amber,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Image.asset('assets/purpleSoul.png',
                              color: Colors.yellow),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1),
                        child: FlutterTextField('', 'Username', Colors.white,
                            '', isErrorUserName, false, getLoginDetails),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1),
                        child: FlutterTextField('', 'Password', Colors.white,
                            '', isErrorPassword, true, getLoginDetails),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: FlutterButton(
                            ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 20.0),
                              primary: Colors.deepPurpleAccent,
                              shape: StadiumBorder(),
                              backgroundColor:
                                  Colors.black, // background (button) color
                              foregroundColor:
                                  Colors.yellow, // foreground (text) color
                            ),
                            'LOGIN',
                            () => Loginhandler(context)),
                      ),
                      Row(
                        children: [
                          Text(
                            'Don\'t have account? ',
                            style: TextStyle(color: Colors.white),
                          ),
                          InkWell(
                            onTap: () {},
                            onLongPress: () {},
                            child: Container(
                                child: Center(
                                    child: Text(
                              'Register',
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                            ))),
                          )
                        ],
                      )
                    ])))));
  }
}
