import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 30, 15, 20),
        child: ListView(
          children: [
          Profile(),
        Padding(padding: EdgeInsets.all(10)),
        Search(),
            Padding(padding: EdgeInsets.all(10)),
            Statistics(),
            Padding(padding: EdgeInsets.all(10)),
        ]
    ),
      )
    );
  }
}

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Statistics",
            style: Theme.of(context).textTheme.headline5),
            Text("MONTH",
            style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
             children: [
               Container(
                 color: Colors.black87,
                 child: Icon(Icons.key,
                 color: Colors.white),
                 height: 60,
                 width: 60,
               ),
               Container(width: 10,),
               Text("Security Attacks",
               style: TextStyle(
                 fontWeight: FontWeight.w400,
                 fontSize: 18
               ),
               ),
             ],
           ),
            Text("68%",
            ),
          ],
        ),
      ],

    );
  }
}


class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87)
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
          child: Icon(
            Icons.search_sharp,
            size: 20,
            color: Colors.grey,

          ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Search"
              ),
            ),
          ),
          Container(
            width: 2,
            color: Colors.black,
            height: 20,

          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
             gradient: LinearGradient(
               colors: [
                 Colors.green.shade700,
                 Colors.green.shade600,
                 Colors.green.shade300,
                 Colors.amber.shade200

               ],
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter

             ),
              border: Border.all(color: Colors.black87)
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu_rounded),
              color: Colors.black,
            ),
          ),

        ],
      ),
    );

  }
}



class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width *0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sparkling Lily",
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline5,
                ),

                Text("Mobile Application Engineer",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),

              ],
            ),
          ),


          Icon(
            Icons.account_box_outlined,
            size: 50,
            color: Colors.cyan,
          )
        ],
      ),
    );
  }
}