import 'package:_summit_homes/pages/details.dart';
import 'package:_summit_homes/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//indication of an item selection
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.only(
          top: 50,
          left: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello,Caleb", style: Appwidget.boldTextfieldStyle()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(3),
                  child: const Icon(Icons.shopping_cart_sharp),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text("Delicious Food", style: Appwidget.headerTextfieldStyle()),
            // SizedBox(height:20),
            Text("Get a good wholesome meal",
                style: Appwidget.lightTextfieldStyle()),
            const SizedBox(
              height: 10,
            ),
            Container(margin: const EdgeInsets.only(right: 20), child: showItem()),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Details()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/salad2.png',
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Broccoli Salad',
                                style: Appwidget.semiBoldTextfieldStyle(),
                              ),
                              Text(
                                'Freshly Prepared',
                                style: Appwidget.semilightTextfieldStyle(),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Kes450',
                                style: Appwidget.pricelightTextfieldStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/spinachsalad.png',
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Spinach Salad',
                              style: Appwidget.semiBoldTextfieldStyle(),
                            ),
                            Text(
                              'With some Avocado slices',
                              style: Appwidget.semilightTextfieldStyle(),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'Kes 480',
                              style: Appwidget.pricelightTextfieldStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                color: Colors.brown[50],
                child: Container(
                  //  padding: EdgeInsets.all(5),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/spinachsalad.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'lettuce Salad',
                              style: Appwidget.semiBoldTextfieldStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Served with boiled eggs',
                              style: Appwidget.semilightTextfieldStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Kes 400',
                              style: Appwidget.pricelightTextfieldStyle(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height:20 ,),
            Container(
                margin: const EdgeInsets.only(right: 20),
                child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown[50],
                    child: Container(
                      //  padding: EdgeInsets.all(5),
                      child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/spinachsalad.png',
                              height: 120,
                              width: 120,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'lettuce Salad',
                                    style: Appwidget.semiBoldTextfieldStyle(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'Served with boiled eggs',
                                    style: Appwidget.semilightTextfieldStyle(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'Kes 400',
                                    style: Appwidget.pricelightTextfieldStyle(),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    )))
          ],
        ),
      ),
    ])));
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'images/icecream.jpg',
                height: 40,
                width: 40,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'images/burger.png',
                height: 40,
                width: 40,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'images/pizza.png',
                height: 40,
                width: 40,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'images/salad.jpg',
                height: 40,
                width: 40,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
