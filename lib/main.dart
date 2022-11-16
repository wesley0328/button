import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'TextButton';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    void showSnackBar(String msg) {
      // 建立SnackBar物件
      final snackBar = SnackBar(

        content: Text(msg,),

        duration: Duration(seconds: 3),

        backgroundColor: Colors.blue,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        action: SnackBarAction(
          label: 'Toast訊息',
          textColor: Colors.white,

          onPressed: () =>
              Fluttertoast.showToast(
                  msg: ' SnackBar',
                  // toastLength: Toast.LENGTH_LONG,
                  // gravity: ToastGravity.CENTER,
                  // backgroundColor: Colors.blue,
                  // textColor: Colors.white,
                  fontSize: 50.0),
        ), // SnackBarAction
      ); // SnackBar

      // 顯示SnackBar
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

    }
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          ElevatedButton(
            style:  ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              foregroundColor: Colors.red,
              backgroundColor:  Colors.yellow,
            ),
            onPressed: () {},
            child: const Text('RaisedButton'),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor:  Colors.blue,
              // padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('   FlatButton   '),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              showSnackBar("你按下SnackBar");
              // TextStyle(fontSize: 50.0);
            },
            child: Text('你按下SnackBar'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // <-- Radius

              ),
              textStyle: const TextStyle(fontSize: 20),
              foregroundColor: Colors.white,
              backgroundColor:  Colors.blue,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              side: BorderSide(width: 1,color: Colors.red),
              textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              // debugPrint('Received click');
              // showSnackBar("String msg");
            },
            child: const Text('OutlineButton',),
          ),
          const SizedBox(height: 20),
          IconButton(
            icon: const Icon(Icons.phone_iphone,color:Colors.blue,size:40,),
            // tooltip: 'Increase volume by 10',
            onPressed: () {},
          ),
          const SizedBox(height: 30),
          FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.phone_iphone),
          ),

          Container(
            height: 130,
           alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: ElevatedButton.icon(
              onPressed: (){
                print("You pressed Icon Elevated Button");
              },
              icon: Icon(Icons.phone_iphone),  //icon data for elevated button
              label: Text("RaiseButton.icon",), //label text
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  foregroundColor: Colors.red,
                  backgroundColor:  Colors.white54,
                  primary: Colors.blueAccent //elevated btton background color
              ),
            ),
          )
        ],
      ),
    );


  }
}
