import 'package:flutter/material.dart';
import 'package:purple_soul/pages/HomeScreenContent.dart';
import 'package:purple_soul/pages/LibraryCompnent.dart';
import 'package:purple_soul/pages/ProfilePageComponent.dart';
import 'package:purple_soul/pages/LibraryCompnent.dart';
import 'package:purple_soul/pages/HomeScreenContent.dart';
import 'package:purple_soul/pages/ExploreComponent.dart';
import '../FlutterComponents/FlutterButton.dart';
import 'package:purple_soul/FlutterComponents/FlutterButton.dart';
import '../FlutterComponents/FlutterTextField.dart';
import 'package:localstorage/localstorage.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  var count = 0;
  var pageIndex = 0;
  var childComponent;
  var isErrorUserName = false;
  var isErrorPassword = false;
  var username = '';
  getLoginDetails(value) {
    print(value[0]);
  }

  Loginhandler(context) {}
  void initState() {
    final LocalStorage storage = new LocalStorage('localstorage_app');
    username = storage.getItem('username');
    Future.delayed(Duration(seconds: 1)).then((_) {
      showModalBottomSheet(
          context: context,
          builder: (builder) {
            return Container(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                Text(
                  'Welcome, Please update your information',
                  style: TextStyle(
                      color: Color.fromARGB(255, 94, 90, 105),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  username,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Enjoy Listening your favourite Music !',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlutterTextField('', 'Set Your Name', Colors.white, '',
                      false, false, getLoginDetails),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: FlutterButton(
                      ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.black, // background (button) color
                        foregroundColor:
                            Colors.yellow, // foreground (text) color
                      ),
                      'Save',
                      () => Loginhandler(context)),
                ),
              ]),
              height: 400,
            );
          });
    });

    super.initState();
  }

  var ScreenPages = ['Libary', 'Explore', 'Profile'];
  void answerClick() {
    setState(() {
      count = count + 1;
    });
    print('Clickeed');
  }

  var bodyContent = [
    HomeSCreenContent(),
    LibraryComponent(),
    ExploreComponent(),
    ProfilePage()
  ];
  void changeBottomMenu(index) {
    setState(() {
      pageIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/purpleSoul.png',
                fit: BoxFit.contain,
                height: 80,
                color: Colors.amber,
              ),
            ],
          ),
          actions: <Widget>[
            Badge(
                child: IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white,
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            )),
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              color: Colors.white,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
          ],
          backgroundColor: Color.fromARGB(255, 134, 9, 128),
        ),
        backgroundColor: Color.fromARGB(255, 134, 9, 128),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color.fromARGB(255, 134, 9, 128),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.music_note),
                  label: 'Library',
                  backgroundColor: Color.fromARGB(255, 134, 9, 128)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.rocket_launch),
                  label: 'Explore',
                  backgroundColor: Color.fromARGB(255, 134, 9, 128)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  backgroundColor: Color.fromARGB(255, 134, 9, 128)),
            ],
            currentIndex: pageIndex,
            onTap: (index) => changeBottomMenu(index),
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.amber,
            showUnselectedLabels: true),
        body: Center(child: bodyContent[pageIndex]));
  }
}
