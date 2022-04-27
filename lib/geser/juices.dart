import 'package:flutter/material.dart';

class JuiceTile extends StatelessWidget {
  final String juiceImagePath;
  final String juiceName;
  final String juicePrice;

  JuiceTile(
      {required this.juiceImagePath,
      required this.juiceName,
      required this.juicePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black26, //warna box gambar
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //gambar menu
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(juiceImagePath),
            ),

            //judul menu
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    juiceName,
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'with almond milk',
                    style: TextStyle(color: Colors.grey[50]),
                  ),
                ],
              ),
            ),

            //price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\Rp' + juicePrice),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(Icons.add),
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
