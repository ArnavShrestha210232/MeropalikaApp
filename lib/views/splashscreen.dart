import "package:flutter/material.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 6,
            ),
            Image.asset(
              'res/logo.png',
              colorBlendMode: BlendMode.darken,
              filterQuality: FilterQuality.high,
              height: size.height / 5,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 39),
                    child: const Text(
                      "डिजिटल",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF004BA4),
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const Text(
                    "पालिका",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF004BA4),
                      fontSize: 23,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Text(
                  "Powered by:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF004BA4),
                  ),
                ),
                Image.asset(
                  'res/download.png',
                  height: size.height / 10,
                ),
              ],
            ),
            SizedBox(
              height: size.height / 6,
            ),
          ],
        ),
      ),
    );
  }
}
