import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key, required double width, required ListView child});

  @override
  Widget build(BuildContext context) {
    return MyDrawer(
      width: double.infinity,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          SafeArea(
            child: CircleAvatar(
              radius: 100,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/person.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "My Name",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            tileColor: fifthColor,
            leading: const Icon(
              Iconsax.receipt_item,
              size: 30,
            ),
            title: const Text(
              'My Orders',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
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
            leading: const Icon(
              Iconsax.user_square,
              size: 30,
            ),
            title: const Text(
              'My Information',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
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
            leading: const Icon(
              Iconsax.information,
              size: 30,
            ),
            title: const Text(
              'F.A.Qs',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
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
            leading: const Icon(
              Iconsax.wallet,
              size: 30,
            ),
            title: const Text(
              'Wallet',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
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
            leading: const Icon(
              Iconsax.gift,
              size: 30,
            ),
            title: const Text(
              'Referrals',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Iconsax.logout,
              color: Colors.red,
              size: 30,
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
