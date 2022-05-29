import 'package:flutter/material.dart';
import 'package:ui_recreate/home_details/home_details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<String> titles = [
  //   'Opulence Apartment',
  //   'ABC Apartment',
  //   'DEF Apartment',
  //   'DEF Apartment',
  // ];

  // List<String> dollars = ['\$500', '\$600', '\$700'];

  // List<String> images = [
  //   'assets/building-2.jpg',
  //   'assets/building-3.jpg',
  //   'assets/building.jpeg',
  // ];

  List<Map<String, String>> values = [
    {
      'title': 'Opulence Apartment',
      'dollars': '\$500',
      'image': 'assets/building-2.jpg',
    },
    {
      'title': 'ABC Apartment',
      'dollars': '\$600',
      'image': 'assets/building-3.jpg',
    },
    {
      'title': 'DEF Apartment',
      'dollars': '\$700',
      'image': 'assets/building.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              //
              // 1st element
              //
              const Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    '* Affitto',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              //
              // 2nd element
              //
              Expanded(
                flex: 20,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      children: [
                        //
                        // 1st element
                        //
                        Container(
                          width: 5,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        //
                        // 2nd element
                        //
                        const Text(
                          'Find\nThe Perfect\nPlace',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        //
                        // 3rd element
                        //
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                  top: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Icon(
                                  Icons.search,
                                  size: 26,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //
              // 3rd element
              //
              Expanded(
                flex: 50,
                child: Stack(
                  children: List.generate(
                    values.length,
                    (index) {
                      return Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          left: 35.0 * (index + 1),
                          top: 15.0 * (values.length - index + 1),
                          bottom: 15.0 * (values.length - index + 1),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(values[index]['image']!),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                values[index]['title']!,
                                style: const TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                values[index]['dollars']!,
                                style: const TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) => HomeDetails(
                                                title: values[index]['title']!,
                                                imgPath: values[index]['image']!,
                                                dollar: values[index]['dollars']!,
                                              )),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(6.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 12.0,
                                            right: 12.0,
                                            top: 8.0,
                                            bottom: 8.0),
                                        child: Text(
                                          'Take a look',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.bookmark,
                                      size: 26,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              //
              // 4th element
              //
              Expanded(
                flex: 10,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Nearby',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Recommend',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.grey[700]!,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.grey[700]!,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //
              // 5th element
              //
              Expanded(
                flex: 15,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //
                          // 1st element
                          //
                          InkWell(
                            onTap: () {
                              print('button tapped');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 12.0,
                                    right: 12.0,
                                    top: 8.0,
                                    bottom: 8.0),
                                child: Text(
                                  '* Affitto',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //
                          // 2nd element
                          //
                          SizedBox(
                            height: 50.0,
                            width: 50.0,
                            child: Stack(
                              children: [
                                const Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.apartment,
                                  ),
                                ),
                                Positioned(
                                  top: 5.0,
                                  right: 3.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.orange[200],
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 5.0,
                                          right: 5.0,
                                          top: 2.0,
                                          bottom: 2.0),
                                      child: Text(
                                        'New',
                                        style: TextStyle(
                                          fontSize: 8.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // IconButton(
                          //   icon: Stack(
                          //     children: [
                          //       const Icon(Icons.apartment,
                          //           color: Colors.black),
                          //       Positioned(
                          //         right: 0,
                          //         top: 0,
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //             color: Colors.orange[200],
                          //             borderRadius: BorderRadius.circular(15.0),
                          //           ),
                          //           child: const Padding(
                          //             padding: EdgeInsets.only(
                          //                 left: 5.0,
                          //                 right: 5.0,
                          //                 top: 2.0,
                          //                 bottom: 2.0),
                          //             child: Text(
                          //               'New',
                          //               style: TextStyle(
                          //                 fontSize: 8.0,
                          //                 color: Colors.black,
                          //                 fontWeight: FontWeight.bold,
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          //   onPressed: () {},
                          // ),
                          //
                          // 3rd element
                          //
                          IconButton(
                            icon:
                                const Icon(Icons.message, color: Colors.black),
                            onPressed: () {},
                          ),
                          //
                          // 4th element
                          //
                          IconButton(
                            icon: const Icon(Icons.bookmarks_outlined,
                                color: Colors.black),
                            onPressed: () {},
                          ),
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
