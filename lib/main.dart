import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_sharp),
          color: Colors.white,
        ),
        title: Text(
          'Standard',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF202020),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'History',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                'Memory',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.77,
                    child: TextField(
                      cursorColor: Colors.white,
                      maxLength: 30,
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(color: Color(0xFF202020))),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            color: Colors.blue.shade900,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.77,
                    child: TextField(
                      cursorColor: Colors.white,
                      maxLength: 30,
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(color: Color(0xFF202020))),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            color: Colors.blue.shade900,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'MC',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Color(0xFF202020)),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'MR',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Color(0xFF202020)),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'M+',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Color(0xFF202020)),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'M-',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Color(0xFF202020)),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'MS',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Color(0xFF202020)),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.63,
                      width: MediaQuery.of(context).size.width * 0.77,
                      child: Container(
                        color: Color(0xFF1E999C),
                        child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('%', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(6)),
                                  ),
                                ),
                                backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('CE', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('C', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('POP', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('1/x', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('x2', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('2rx', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('/', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('7', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('8', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('9', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('X', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('4', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('5', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('6', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('-', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('1', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('2', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('3', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('+', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('+/_', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('0', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('.', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('=', style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(Color(0xFF323232))
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 5),
            Container(
              color: Colors.deepPurpleAccent,
              height: MediaQuery.of(context).size.height * 0.92,
              width: 295,
            ),
          ],
        ),
      ),
    );
  }
}
