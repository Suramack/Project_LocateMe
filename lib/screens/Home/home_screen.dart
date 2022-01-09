import 'package:flutter/material.dart';
import 'package:locate_me/screens/Female/female.dart';
import 'package:locate_me/screens/Home/Components/style.dart';
import 'package:locate_me/screens/Home/widget.dart';
import 'package:locate_me/screens/Male/male.dart';
import 'package:locate_me/screens/Map/map.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentScreenType = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    List<Widget> maleAndFemale = const [
      MaleCard(),
      FemaleCard(),
      Map(),
    ];
    List<String> appBarTitle = [
      'Male',
      'Female',
      'Map',
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Text(appBarTitle[currentScreenType]),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 130,
                    child: Image.asset(
                      'assets/LocateMeLogo.png',
                      width: 100,
                    ),
                  ),
                  const Divider(
                    color: Colors.greenAccent,
                    thickness: 1,
                  ),
                  ElevatedButton(
                    style: drawerButtonStyle(),
                    onPressed: () {
                      setState(() {
                        currentScreenType = 0;
                        Navigator.pop(context);
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Male',
                          style: drawerButtonTextStyle(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.orange.shade600,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.male,
                              size: 28,
                              color: Colors.orange.shade200,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: drawerButtonStyle(),
                    onPressed: () {
                      setState(() {
                        currentScreenType = 1;
                        Navigator.pop(context);
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Female',
                          style: drawerButtonTextStyle(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.orange.shade600,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.female,
                              size: 28,
                              color: Colors.orange.shade200,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: drawerButtonStyle(),
                    onPressed: () {
                      setState(() {
                        currentScreenType = 2;
                        Navigator.pop(context);
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Map',
                          style: drawerButtonTextStyle(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.orange.shade600,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.location_on,
                              size: 28,
                              color: Colors.orange.shade200,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => {},
        ),
        body: maleAndFemale[currentScreenType]);
  }
}
