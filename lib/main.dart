import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 200,
          title: Text(''),
        ),
        body: Container(
            child: Column(children: [
          Row(children: [
            Container(
              width: 100,
            ),
            Center(
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(1000),
                                topRight: Radius.circular(1000),
                                bottomLeft: Radius.circular(1000),
                                bottomRight: Radius.circular(1000))),
                        child: Opacity(
                            opacity: 0,
                            child: Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Black_flag.svg/640px-Black_flag.svg.png',
                            )))))
          ]),
          Opacity(
              opacity: 1,
              child: Column(children: [
                Row(children: [
                  Container(
                    width: 100,
                  ),
                  Text(
                    'Your ',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'Life',
                    style: TextStyle(fontSize: 42),
                  )
                ]),
                Opacity(opacity: 1, child: Text('Your Rules')),
                Opacity(
                    opacity: 0.5, child: Text('create your own to do lists'))
              ])),
          Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: FloatingActionButton.extended(
                onPressed: () {},
                elevation: 0,
                label: Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text('Sign Up with email                    ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ))),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
              )),
          Container(
            height: 10,
          ),
          Text(
            '-------------- or --------------',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NovaPage();
                  }));
                },
                elevation: 0,
                label: Row(children: [
                  Text(
                    'G',
                    style: TextStyle(fontSize: 30),
                  ),
                  Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Text('Sign Up with Google',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          )))
                ]),
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
              )),
          Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NovaPage();
                  }));
                },
                elevation: 0,
                label: Row(children: [
                  Icon(
                    Icons.apple,
                    size: 30,
                  ),
                  Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Text('Sign Up with Apple',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          )))
                ]),
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
              ))
        ])));
  }
}

class NovaPage extends StatelessWidget {
  NovaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          child: Row(
        children: [
          Text(
            'Bem Vindo!\nAo nosso epi\nagora\nsai daqui e vá\ncorrigir tudo!',
            style: TextStyle(fontSize: 60),
          ),
        ],
      )),
      MaterialButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
          child: Icon(
            Icons.back_hand,
            size: 100,
          ))
    ]));
  }
}
