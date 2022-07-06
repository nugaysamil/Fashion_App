import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  final String imgPath;
  const Detay({Key? key, required this.imgPath}) : super(key: key);

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imgPath), fit: BoxFit.cover),
            ),
          )),
      Positioned(
        left: 15,
        right: 15,
        bottom: 15,
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 4,
          child: Container(
            height: 210,
            width: MediaQuery.of(context).size.width - 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          height: 105,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                  image: AssetImage('assets/dress.jpg'),
                                  fit: BoxFit.contain))),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'LAMINATED',
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Comic Sans',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Louis Vuttion',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Comic Sans',
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width - 200,
                          child: const Text(
                            'One button V-neck sling long-sleaved waist female stitching dress',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Comic Sans',
                                color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    )
                  ],
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$6500',
                        style:
                            TextStyle(fontFamily: 'Comic Sans', fontSize: 22),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Center(child: Icon(Icons.arrow_forward_ios)),
                          backgroundColor: Colors.brown,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2,
        left: 50,
        child: Container(
          height: 40,
          width: 130,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Text(
              "Laminated",
              style: TextStyle(
                  fontFamily: 'Comic Sans',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      )
    ]));
  }
}
