import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbg,
      appBar: AppBar(
        backgroundColor: scaffoldbg,
        title: Text(
          "Shop",
          style: GoogleFonts.montserrat(
            color: white,
            letterSpacing: 1,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topRight,
                  height: 400.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://lh3.googleusercontent.com/QvuymBLZgWUcICNLEjMOMFCrhGy--2SjEqeT8PXHbknFI3-dCazwThYgh14svQU8533_pS3Ffj4UxzGbFQ13nBxnmZ7_5mu8xsty=w318",
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.transparent,
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(
                        16.0,
                      ))),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: white,
                  backgroundImage: NetworkImage(
                    "https://bookface-images.s3.amazonaws.com/avatars/3c7ee773662fa82a862e6253c910c62f9d3b274c.jpg",
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ringers",
                      style: GoogleFonts.montserrat(
                        color: white,
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "by",
                          style: font,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Dmitri Cherniak",
                          style: GoogleFonts.montserrat(
                            color: secondary,
                            letterSpacing: 1,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      "1,800 ETH",
                      style: GoogleFonts.montserrat(
                        color: white,
                        letterSpacing: 1,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: darkbg,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: FittedBox(
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.clock, color: white),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      "Sale ends, 11 March 2021 at 21:00 WIB ",
                      style: GoogleFonts.montserrat(
                        color: white,
                        letterSpacing: 1,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'Clock depicts a dynamic timer that counts the number of days Julian Assange, the founder of WikiLeaks, has spent in prison. Assange is involved in a highly controversial case. He’s facing extradition from Britain to the US for multiple espionage charges and up to 175 years behind bars. ',
                      style: font),
                  TextSpan(
                    text: 'Learn more.. ',
                    style: GoogleFonts.montserrat(
                      color: secondary,
                      letterSpacing: 1,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () {},
                child: Text("Place a Bid", style: font),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
