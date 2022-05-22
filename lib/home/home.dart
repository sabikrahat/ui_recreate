import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                        SizedBox(
                          width: 20.0,
                        ),
                        //
                        // 2nd element
                        //
                        Text(
                          'Find\nThe Perfect\nPlace',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
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
                              child: Padding(
                                padding: const EdgeInsets.only(
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
                child: Container(
                  color: Colors.blue[100],
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
                          Container(
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
                          //
                          // 2nd element
                          //
                          IconButton(
                            icon: Stack(
                              children: [
                                const Icon(Icons.apartment,
                                    color: Colors.black),
                                Positioned(
                                  right: 0,
                                  top: 0,
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
                            onPressed: () {},
                          ),
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
