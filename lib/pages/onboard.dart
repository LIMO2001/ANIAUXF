import 'package:_summit_homes/pages/signUp.dart';
import 'package:_summit_homes/widget/content_model.dart';
import 'package:_summit_homes/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentindex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            contents[i].image,
                            height: MediaQuery.of(context).size.height/2.5,
                            width: MediaQuery.of(context).size.width ,
                            fit: BoxFit.fitHeight,
                          ),
                          const SizedBox(height: 30),
                          Text(
                            contents[i].title,
                            style: Appwidget.boldTextfieldStyle(),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            contents[i].description,
                            style: Appwidget.lightTextfieldStyle(),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),

          //Dot 
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                )),
          ),
          GestureDetector(
              onTap: () {
                if (currentindex == contents.length -1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                }
                _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: Colors.red,
                    ),
                height: 60,
                margin:MediaQuery.of(context).padding,
                width: double.infinity,
                child: Center(
                  child: Text(
                    currentindex == contents.length -1?"S T A R T":'N E X T ',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentindex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
    );
  }
}
