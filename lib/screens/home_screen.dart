import 'package:flutter/material.dart';
import 'package:flutter_payment_app/components/colors.dart';
import 'package:flutter_payment_app/screens/payment_screen.dart';
import 'package:flutter_payment_app/widgets/circular_button.dart';
import 'package:flutter_payment_app/widgets/large_button.dart';
import 'package:flutter_payment_app/widgets/text_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            _headSection(),
            _listCard(),
            _payButton(),
          ],
        ),
      ),
    );
  }

  Positioned _payButton() {
    return Positioned(
      bottom: 10,
      child: LargeButton(
        text: "Pay all bills",
        textColor: Colors.white,
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PaymentScreen()));
        },
      ),
    );
  }

  Positioned _listCard() {
    return Positioned(
      top: 320,
      left: 0,
      right: 0,
      bottom: 0,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (_, index) {
            return Container(
              margin: const EdgeInsets.only(top: 20, right: 20),
              height: 130,
              width: MediaQuery.of(context).size.width - 20,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFd8dbe0),
                        offset: Offset(1, 1),
                        blurRadius: 20.0,
                        spreadRadius: 10)
                  ]),
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 3,
                                  color: Colors.grey,
                                ),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/brand1.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "KenGen Power",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.mainColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "ID:846594",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.idColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedText(
                            text: "Auto pay on 24th May 18",
                            color: AppColor.green),
                        const SizedBox(height: 5),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColor.selectBackground),
                              child: Center(
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.selectColor,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            const Text(
                              "₦1500.00",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: AppColor.mainColor,
                              ),
                            ),
                            Text(
                              "Due in 3 days",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColor.idColor,
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 5,
                          height: 35,
                          decoration: const BoxDecoration(
                            color: AppColor.mainColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  SizedBox _headSection() {
    return SizedBox(
      height: 310,
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 0,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  invertColors: true,
                  colorFilter:
                      ColorFilter.mode(Colors.indigo, BlendMode.lighten),
                  image: AssetImage("assets/images/background.png"),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: -90,
            bottom: -2,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  // fit: BoxFit.fitHeight,
                  image: AssetImage("assets/images/curve.png"),
                ),
              ),
            ),
          ),
          Positioned(
            right: 50,
            bottom: 8,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet<dynamic>(
                  isScrollControlled: true,
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  // grey.withOpacity(0.5)
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height - 240,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              color: const Color(0xFFEEF1F4).withOpacity(0.7),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height - 300,
                            ),
                          ),
                          Positioned(
                            right: 50,
                            child: Container(
                              width: 60,
                              height: 250,
                              decoration: BoxDecoration(
                                color: AppColor.mainColor,
                                borderRadius: BorderRadius.circular(29),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircularButton(
                                    icon: Icons.cancel,
                                    iconColor: AppColor.mainColor,
                                    textColor: Colors.white,
                                    backgroundColor: Colors.white,
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  CircularButton(
                                    icon: Icons.add,
                                    iconColor: AppColor.mainColor,
                                    textColor: Colors.white,
                                    backgroundColor: Colors.white,
                                    text: "Add Bill",
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  CircularButton(
                                    icon: Icons.history,
                                    iconColor: AppColor.mainColor,
                                    textColor: Colors.white,
                                    backgroundColor: Colors.white,
                                    text: "History",
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/lines.png"),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        offset: const Offset(0, 1),
                        color: const Color(0xFF11324d).withOpacity(0.2)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 100,
            child: Text(
              "My Bills",
              style: TextStyle(
                fontSize: 90,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
          ),
          const Positioned(
            left: 30,
            top: 70,
            child: Text(
              "My Bills",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Color(0xFF293952),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
