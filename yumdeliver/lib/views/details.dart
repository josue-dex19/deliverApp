import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../constants/colors.dart';
import '../constants/function.dart';
import '../constants/list.dart';
import '../models/food.dart';

class Detail extends StatefulWidget {
  const Detail({
    super.key,
    required this.foodUrls,
  });
  final Food foodUrls;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTab.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Iconsax.arrow_left_2)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              label: Text(nombre.toString()),
              child: const Icon(Iconsax.bag_happy),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              leading: Center(),
              toolbarHeight: 0,
              expandedHeight:
                  MediaQuery.of(context).size.height < 600 ? 200 : 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  widget.foodUrls.image,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              )),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: thirdColor,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.foodUrls.categorie,
                                          style: const TextStyle(
                                              color: secondaryColor,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Text(
                                          widget.foodUrls.nom,
                                          style: const TextStyle(
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Qty",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            const CircleBorder()),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(const Color
                                                                    .fromARGB(
                                                                255,
                                                                221,
                                                                234,
                                                                245)),
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      decrementer();
                                                    });
                                                  },
                                                  child:
                                                      const Icon(Icons.remove)),
                                              const Text("S"),
                                              ElevatedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            const CircleBorder()),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(const Color
                                                                    .fromARGB(
                                                                255,
                                                                221,
                                                                234,
                                                                245)),
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      incrementer();
                                                    });
                                                  },
                                                  child: const Icon(Icons.add)),
                                            ],
                                          ),
                                        )
                                      ])
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                child: Text(widget.foodUrls.description,
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height <
                                                    600
                                                ? 16
                                                : 18)),
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          subtitle: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.foodUrls.reduction,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  Text(
                                    'N${widget.foodUrls.prix}',
                                    style: const TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  ),
                                ],
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
                                  )),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Card(
                            elevation: 200,
                            shadowColor: Colors.black,
                            child: Column(
                              children: [
                                DefaultTabController(
                                  length: myTab.length,
                                  animationDuration: const Duration(seconds: 2),
                                  child: TabBar(
                                    indicatorColor: const Color.fromARGB(
                                        255, 161, 157, 157),
                                    labelColor: secondaryColor,
                                    controller: _tabController,
                                    tabs: const [
                                      Tab(
                                          height: 56,
                                          child: Text(
                                            'Description',
                                            style: TextStyle(fontSize: 24),
                                          )),
                                      Tab(
                                          height: 56,
                                          child: Text(
                                            'Reviews',
                                            style: TextStyle(fontSize: 24),
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 300.0,
                                  height:
                                      MediaQuery.of(context).size.height < 600
                                          ? 200
                                          : 250,
                                  child: TabBarView(
                                    controller: _tabController,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0,
                                              right: 10.0,
                                              top: 10.0),
                                          child: Text(
                                              textAlign: TextAlign.justify,
                                              'Ipsum duis quis excepteur consequat. Fugiat aute velit incididunt nulla. Officia est reprehenderit sint ad aliquip exercitation officia officia sunt culpa consequat laborum fugiat. Aliquip sint dolor irure sunt excepteur aute excepteur ipsum tempor officia pariatur deserunt.',
                                              style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .height <
                                                        600
                                                    ? 16
                                                    : 18,
                                              ))),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0,
                                              right: 10.0,
                                              top: 10.0),
                                          child: Text(
                                              textAlign: TextAlign.justify,
                                              'Ut esse fugiat aute consectetur adipisicing minim proident minim ipsum qui velit est nulla. Dolore enim enim consequat mollit nisi do anim commodo. Eu non eiusmod officia veniam laboris elit. Cillum non qui aliqua cupidatat mollit.',
                                              style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                            .size
                                                            .height <
                                                        600
                                                    ? 16
                                                    : 18,
                                              ))),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
