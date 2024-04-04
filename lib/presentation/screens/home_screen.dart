import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 117,
              height: 116,
              child: Image.asset("lib/assets/gr.png"),
            ),
            const Text(
              'Connect your wearables',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: MyDefaultWidget(
                name: 'Apple',
                image: 'lib/assets/apple.png',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: MyDefaultWidget(
                name: 'Concept2',
                image: 'lib/assets/c2.png',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: MyDefaultWidget(
                name: 'Eight',
                image: 'lib/assets/eight.png',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: MyDefaultWidget(
                name: 'FitBit',
                image: 'lib/assets/fitbit.png',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: MyDefaultWidget(
                name: 'Garmin',
                image: 'lib/assets/garmin.png',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: MyDefaultWidget(
                name: 'GoogleFit',
                image: 'lib/assets/googlefit.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDefaultWidget extends StatelessWidget {
  const MyDefaultWidget({
    super.key,
    required this.name,
    required this.image,
  });
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            offset: const Offset(0, 4),
            blurRadius: 15,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      width: 350,
      height: 70,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: SizedBox(
                  width: 24.58,
                  height: 30,
                  child: Image.asset(image),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                "Connect",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
