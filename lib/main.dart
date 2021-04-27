import 'package:flutter/material.dart';



void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  // List<String> images = [
  //   'images/metalgarurumon.png',
  //   'images/garurumon.png',
  //   'images/weregarurumon.png',
  //   'images/greymon.png',
  //   'images/metalgreymon.png',
  //   'images/valkyrimon.png',
  //   'images/megaseadramon.png',
  //   'images/stingmon.png',
  //   'images/wargreymon.png'
  // ];
  List<String> images = [
    'metalgarurumon',
    'garurumon',
    'weregarurumon',
    'greymon',
    'metalgreymon',
    'valkyrimon',
    'megaseadramon',
    'stingmon',
    'wargreymon'
  ];
  int imageIndex = 0;
  String currentImage = '';



  @override
  Widget build(BuildContext context) {
    print(images);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
            'DigiApp',
            style: TextStyle(
              fontFamily: 'Teko',
              fontSize: 40.0,
              color: Colors.amber,
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(
                'images/' + images[imageIndex] + '.png',
                scale: 1.85,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0,),
            Text(
                images[imageIndex].toUpperCase(),
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 15.0,),
            Text(
                'LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0,),
            Text(
                'Ultimate',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 15.0,),
            Row(
              children: [
                Icon(
                  Icons.flare_outlined,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Vaccine-Type',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if (imageIndex == images.length-1) imageIndex = 0;
            else imageIndex++;
            print(images[imageIndex]);
          });
        },
        backgroundColor: Colors.amberAccent,
        child: Icon(
            Icons.loop,
            size: 40.0,
            color: Colors.blueGrey[600],
        ),
    ),
    );
  }
}


