import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yumdeliver/constants/colors.dart';

import '../constants/function.dart';
import 'menu.dart';
import 'profil.dart';
import 'favorie.dart';
import 'order.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int _selectedIndex = 0;
  final screen = [
    const Menu(),
    const Favorie(),
    const Order(),
    const Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        // height: MediaQuery.of(context).size.height,
        child: Drawer(
          width: double.infinity,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              SafeArea(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: MediaQuery.of(context).size.height < 600 ? 80 : 100,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/person.jpg',
                    ),
                  ),
                ),
              ),
              const Text(
                "My Name",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    tileColor: fifthColor,
                    leading: Icon(
                      Iconsax.receipt_item,
                      size: MediaQuery.of(context).size.height < 600
                          ? 20.0
                          : 30.0,
                    ),
                    title: Text(
                      'My Orders',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.height < 600
                              ? 15.0
                              : 18.0),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  ListTile(
                    tileColor: fifthColor,
                    leading: Icon(
                      Iconsax.user_square,
                      size: MediaQuery.of(context).size.height < 600
                          ? 20.0
                          : 30.0,
                    ),
                    title: Text(
                      'My Information',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.height < 600
                              ? 15.0
                              : 18.0),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  ListTile(
                    tileColor: fifthColor,
                    leading: Icon(
                      Iconsax.information,
                      size: MediaQuery.of(context).size.height < 600
                          ? 20.0
                          : 30.0,
                    ),
                    title: Text(
                      'F.A.Qs',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.height < 600
                              ? 15.0
                              : 18.0),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  ListTile(
                    tileColor: fifthColor,
                    leading: Icon(
                      Iconsax.wallet,
                      size: MediaQuery.of(context).size.height < 600
                          ? 20.0
                          : 30.0,
                    ),
                    title: Text(
                      'Wallet',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.height < 600
                              ? 15.0
                              : 18.0),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  ListTile(
                    tileColor: fifthColor,
                    leading: Icon(
                      Iconsax.gift,
                      size: MediaQuery.of(context).size.height < 600
                          ? 20.0
                          : 30.0,
                    ),
                    title: Text(
                      'Referrals',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.height < 600
                              ? 15.0
                              : 18.0),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  SizedBox(
                      height:
                          MediaQuery.of(context).size.height < 600 ? 10 : 15),
                  ListTile(
                    leading: Icon(
                      Iconsax.logout,
                      color: Colors.red,
                      size: MediaQuery.of(context).size.height < 600
                          ? 20.0
                          : 30.0,
                    ),
                    title: Text(
                      'Log Out',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.height < 600
                              ? 15.0
                              : 18.0),
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/welcome');
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        // leading: const Icon(Iconsax.menu_1, size: 26),
        actions: <Widget>[
          CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                'assets/images/person.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Center(
        child: screen.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: secondaryColor),
        selectedItemColor: secondaryColor,
        unselectedItemColor: Colors.grey.shade700,
        unselectedLabelStyle: TextStyle(color: Colors.grey.shade900),
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.home_25, size: 26),
            label: 'Home',
            backgroundColor: fifthColor,
          ),
          const BottomNavigationBarItem(
              icon: Icon(Iconsax.favorite_chart5, size: 26),
              label: 'Favorite',
              backgroundColor: fifthColor),
          BottomNavigationBarItem(
              icon: Badge(
                label: Text(nombre.toString()),
                child: const Icon(Iconsax.bag_happy5, size: 26),
              ),
              label: 'My Order',
              backgroundColor: fifthColor),
          const BottomNavigationBarItem(
              icon: Icon(Iconsax.user, size: 26),
              label: 'Profil',
              backgroundColor: fifthColor),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
