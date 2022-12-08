import 'package:flutter/material.dart';
import 'package:trial_task_aitl/data.dart';
import 'package:trial_task_aitl/widgets/appbar.dart';
import 'package:trial_task_aitl/widgets/big_card.dart';
import 'package:trial_task_aitl/widgets/hero_slider.dart';
import 'package:trial_task_aitl/widgets/interest_card.dart';
import 'package:trial_task_aitl/widgets/person.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Dashboard"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -------------------------------- Hero Slider
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(children: [for (HeroSlide x in heroData) heroSlider(x.title, x.subtitle, x.img, x.clr)]),
              ),
            ),
            // -------------------------------- Interest Card
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: [
                    interestCard("INTEREST RATE", "4.5%", "Fixed for 2 years"),
                    interestCard("INTEREST RATE", "2.5%", "Variable for 2 years"),
                  ],
                ),
              ),
            ),
            // -------------------------------- Big Card
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: [
                    bigCard("Mortgage Calculator", "Check out how much you can borrow for anything", "calculator.png"),
                    bigCard("Lowest Rates", "Check out how much you can borrow for anything", "dollar.png"),
                    bigCard("Lowest Rates", "Check out how much you can borrow for anything", "rate.png"),
                  ],
                ),
              ),
            ),
            // -------------------------------- Chat Users
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 5),
              child: SizedBox(
                height: 122,
                child: Card(
                  clipBehavior: Clip.none,
                  elevation: 6,
                  shadowColor: const Color.fromRGBO(0, 0, 0, 0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      personCard("Amber", "avatar1.png", true),
                      personCard("Jen", "avatar2.png", true),
                      personCard("Sam", "avatar3.png", false),
                      personCard("Fredrick", "avatar4.png", true),
                    ],
                  ),
                ),
              ),
            ),
            // -------------------------------- Actions
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(195, 30, 7, 1.0)),
                            foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                            minimumSize: MaterialStatePropertyAll<Size>(Size(100, 50))),
                        child: const Text("LOG IN")),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(255, 219, 219, 1.0)),
                          foregroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(195, 30, 7, 1.0)),
                          minimumSize: MaterialStatePropertyAll<Size>(Size(100, 50)),
                        ),
                        child: const Text("SIGN UP")),
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
