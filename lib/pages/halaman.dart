import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPages extends StatelessWidget {
  const MenuPages({super.key});

  @override
  Widget build(BuildContext context) {
    Widget itemheader() {
      Widget itemcard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(left: 22, right: 5),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          child: Column(
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(10),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Text(
              'Favorite Item',
              style: GoogleFonts.poppins(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              itemcard("img-kom2.png", "elco\n \$25"),
              itemcard("img-kom3.png", "modul1\n \$50"),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              itemcard("img-kom4.png", "led\n \$70"),
              itemcard("img-kom5.png", "transistor\n \$80"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              itemcard("img-kom8.png", "ic\n \$70"),
              itemcard("fimg-kom9.png", "led-red\n \$80"),
            ],
          )
        ],
      );
    }

    Widget furnitureHeader() {
      Widget furnitureCard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  padding: const EdgeInsets.all(10),
                  height: 90,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3))
                      ]),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(img))),
                        ),
                        const Spacer(),
                        Row(children: [
                          Text(
                            text,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          const Icon(IconData(0xe09b,
                              fontFamily: 'MaterialIcons',
                              matchTextDirection: true))
                        ]),
                      ])),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Text('Category',
                  style: GoogleFonts.poppins(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                furnitureCard("assets/img-kom10.png", "modul2"),
                furnitureCard("assets/img-kom11.png", "modul3"),
                furnitureCard("assets/img-kom12.png", "chip"),
                furnitureCard("assets/img-kom13.png", "resistor"),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.yellow,
          child: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Discover',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.shopping_cart_sharp,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Find Your Product',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ],
          )),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account')
      ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [furnitureHeader(), itemheader()],
        ),
      ),
    );
  }
}
