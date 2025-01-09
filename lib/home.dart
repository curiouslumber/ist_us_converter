import 'package:flutter/material.dart';
import 'package:ist_us_converter/timeformatdropdown.dart';


class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Indian Time (IST)',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 32.0,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 16,
                        children: [
                          Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: Text(
                              '0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: Text(
                              '9',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 16.0,
                            child: Text(":",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: Text(
                              '0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                            height: 50,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: TimeFormatDropdown()
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: FloatingActionButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Icon(
                      Icons.sync
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'US Time',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 32.0,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 16,
                        children: [
                          Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: Text(
                              '9',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 16.0,
                            child: Text(":",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: Text(
                              '0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64.0
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                            height: 50,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              )
                            ),
                            child: TimeFormatDropdown()
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}