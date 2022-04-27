import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juice/geser/juices.dart';
import 'package:juice/geser/nama_jus.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List tipejus = [
    // [coffe type, is selected]
    [
      'Juice',
      true,
    ],
    [
      'Cappucino',
      false,
    ],
    [
      'Tea',
      false,
    ],
    [
      'Ice Cream',
      false,
    ],
  ];

  void JuiceTypeSelected(int index) {
    setState(() {
      //this for loop makes every selection false
      for (int i = 0; i < tipejus.length; i++) {
        tipejus[i][1] = false;
      }
      tipejus[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100], // warna backround
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          // find the best coffe for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Let's Grab Something ... !",
              style: GoogleFonts.bebasNeue(
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your drinks Sulpiana..',
                hintStyle: TextStyle(fontSize: 15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),

          Container(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tipejus.length,
                  itemBuilder: (context, index) {
                    return TypeJuice(
                        tipejus: tipejus[index][0],
                        isSelected: tipejus[index][1],
                        onTap: () {
                          JuiceTypeSelected(index);
                        });
                  })),

          //horizontal list view juice
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                JuiceTile(
                  juiceImagePath: 'images/juice_dua.jpg',
                  juiceName: 'Avocado',
                  juicePrice: '250k',
                ),
                JuiceTile(
                  juiceImagePath: 'images/juice_tiga.jpg',
                  juiceName: 'Ice Coffee',
                  juicePrice: '100k',
                ),
                JuiceTile(
                  juiceImagePath: 'images/juice_satu.jpg',
                  juiceName: 'Pop Ice',
                  juicePrice: '80k',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
