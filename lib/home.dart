import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'google.dart';
import 'bing.dart';
import 'duckduckgo.dart';
import 'yahoo.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(

      physics: BouncingScrollPhysics(),
      child: Center(
        child: Column(

          children: <Widget>[
            SizedBox(height: 150),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: CircleAvatar(
                backgroundColor: Colors.brown,
                //child: Text('LOGO',style: TextStyle(color: Colors.white),),
                backgroundImage: CachedNetworkImageProvider('https://imgur.com/SJ2eRdL.jpg'),
                maxRadius: 60.0,
              ),
            ),
            SizedBox(height: 50),

            SizedBox(
              height: 50,
              width: 180,

              child: RaisedButton(
                onPressed:  () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Google()),
                  );
                },
                textColor: Colors.white,
                color: Colors.grey,
                elevation: 10,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),

                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      //child: Text('LOGO',style: TextStyle(color: Colors.white),),
                      backgroundImage: CachedNetworkImageProvider('https://i.pinimg.com/originals/d7/e1/55/d7e15567a2a05aa8899486730d656441.png'),
                      maxRadius: 20.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: new Text(
                        "Google",
                        style: TextStyle(letterSpacing: 2,fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            SizedBox(height: 50),

            SizedBox(
              height: 50,
              width: 180,

              child: RaisedButton(
                onPressed:  () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Yahoo()),
                  );
                },
                textColor: Colors.white,
                color: Colors.grey,
                elevation: 10,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),

                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      //child: Text('LOGO',style: TextStyle(color: Colors.white),),
                      backgroundImage: CachedNetworkImageProvider('https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Yahoo%21_icon.svg/1280px-Yahoo%21_icon.svg.png'),
                      maxRadius: 20.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: new Text(
                        "Yahoo!",
                        style: TextStyle(letterSpacing: 2,fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 180,

              child: RaisedButton(
                onPressed:  () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bing()),
                  );
                },
                textColor: Colors.white,
                color: Colors.grey,
                elevation: 10,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),

                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      //child: Text('LOGO',style: TextStyle(color: Colors.white),),
                      backgroundImage: CachedNetworkImageProvider('https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Bing_favicon.svg/1200px-Bing_favicon.svg.png'),
                      maxRadius: 20.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: new Text(
                        "Bing",
                        style: TextStyle(letterSpacing: 2,fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 200,

              child: RaisedButton(
                onPressed:  () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DuckDuckGo()),
                  );
                },
                textColor: Colors.white,
                color: Colors.grey,
                elevation: 10,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),

                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      //child: Text('LOGO',style: TextStyle(color: Colors.white),),
                      backgroundImage: CachedNetworkImageProvider('https://cdn.iconscout.com/icon/free/png-512/duckduckgo-3-569238.png'),
                      maxRadius: 20.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: new Text(
                        "DuckduckGo",
                        style: TextStyle(letterSpacing: 2,fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            SizedBox(height: 50),


          ],

        ),
      ),
    );
  }


}
