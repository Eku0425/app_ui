import 'package:app_ui/utils/global_var.dart';
import 'package:app_ui/utils/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detailscreen'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: 390,
                color: Colors.blue.shade300,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(proList[selectedIndex]['img']),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 240, top: 20),
                          child: Text(
                            proList[selectedIndex]['name'],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 240, top: 60),
                          child: Text(
                            proList[selectedIndex]['price'].toString() + '/-',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100, left: 230),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = proList[index]['qty']--;
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100, left: 260),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = proList[index]['qty']++;
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Text(
                                    proList[index]['qty'].toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 135, left: 290),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                count = proList[index]['qty']++;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              proList[selectedIndex]['des'],
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          GestureDetector(onTap: (){
            setState(() {
                 cartList.add(proList[selectedIndex]);
            });
          },

            child: GestureDetector(onTap: (){
              setState(() {
                cartList.add(proList[selectedIndex]);
                Navigator.of(context).pushNamed('/cart');
              });
            },

              child: Container(
                margin: EdgeInsets.all(65),
                height: 90,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Center(
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
