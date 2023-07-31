import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yumdeliver/views/details.dart';

import '../constants/colors.dart';
import '../constants/list.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Unleash Your Snack Cravings, \nWe'll Handle the Rest.",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height < 600 ? 18.0 : 26.0,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: secondaryColor,
                )),
                prefixIcon: Icon(
                  Iconsax.search_favorite,
                  color: secondaryColor,
                ),
                hintText: 'Food , Drinks , etc',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: foodUrls.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 200,
                      child: Column(
                        children: [
                          Image.asset(foodUrls[index].image),
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  foodUrls[index].categorie,
                                  style: const TextStyle(
                                      color: secondaryColor,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  foodUrls[index].nom,
                                  style: const TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.w900),
                                )
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                Text(foodUrls[index].reduction,
                                    style: const TextStyle(
                                        decoration:
                                            TextDecoration.lineThrough)),
                                const SizedBox(width: 20),
                                Text(
                                  'N${foodUrls[index].prix}',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        foregroundColor: thirdColor,
                                        backgroundColor: secondaryColor,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)))),
                                    onPressed: () {},
                                    child: const Text(
                                      'Buy Now',
                                      style: TextStyle(fontSize: 16.0),
                                    ))
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Detail(foodUrls: foodUrls[index]),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    ));
  }
}
