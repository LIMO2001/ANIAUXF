import 'package:_summit_homes/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.amber,
                )),
            Image.asset(
              'images/salad2.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Carribean',
                      style: Appwidget.boldTextfieldStyle(),
                    ),
                    Text(
                      'Broccoli Salad',
                      style: Appwidget.headerTextfieldStyle(),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) (--a);
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  a.toString(),
                  style: Appwidget.semiBoldTextfieldStyle(),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
                'This homemade broccoli salad\n'
                'uses a tasty combination of fresh\n'
                'broccoli, cranberries, nuts, and bacon,tossed in a tangy creamy dressing. You might want to double this recipe\n'
                'for a party or potluck — it goes quickly!',
                style: Appwidget.semilightTextfieldStyle()),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Delivery Time',
                  style: Appwidget.semiBoldTextfieldStyle(),
                ),
                const SizedBox(
                  width: 25,
                ),
                const Icon(
                  Icons.alarm_on_sharp,
                  color: Color.fromARGB(255, 120, 168, 192),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '30 Mins',
                  style: Appwidget.semiBoldTextfieldStyle(),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: Appwidget.semiBoldTextfieldStyle(),
                          ),
                        ],
                      ),
                      Text(
                        'KES 450',
                        style: Appwidget.pricelightTextfieldStyle(),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'Add to Cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Nerko'),
                        ),
                        Icon(Icons.shopping_cart_checkout,color: Colors.white,)
                      ],
                    ),
                  ),
             
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
