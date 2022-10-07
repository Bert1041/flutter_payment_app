import 'package:flutter/material.dart';
import 'package:flutter_payment_app/components/colors.dart';
import 'package:flutter_payment_app/screens/home_screen.dart';
import 'package:flutter_payment_app/widgets/circular_button.dart';
import 'package:flutter_payment_app/widgets/large_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            invertColors: true,
            colorFilter: ColorFilter.mode(Colors.indigo, BlendMode.lighten),
            image: AssetImage("assets/images/paymentbackground.png"),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: height * 0.14,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/images/success.png"),
                ),
              ),
            ),
            const Text(
              "Success !",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Payment is completed for 3 bills",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColor.idColor,
              ),
            ),
            SizedBox(height: height * 0.045),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(.5),
                ),
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 15, left: 20),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.green,
                                ),
                                child: const Icon(Icons.done, size: 30),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    "KenGen Power",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "ID:2345654666",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              Column(
                                children: const [
                                  Text(
                                    "",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "₦12500.56",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.grey.withOpacity(.5),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            Column(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColor.idColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "₦37500.170",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.23),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularButton(
                  icon: Icons.share_sharp,
                  onTap: () {},
                  text: "share",
                  backgroundColor: Colors.white,
                  iconColor: AppColor.mainColor,
                ),
                SizedBox(width: width * 0.04),
                CircularButton(
                  icon: Icons.print_outlined,
                  onTap: () {},
                  text: "print",
                  backgroundColor: Colors.white,
                  iconColor: AppColor.mainColor,
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            LargeButton(
              text: "Done",
              backgroundColor: Colors.white,
              textColor: AppColor.mainColor,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
