import 'package:flutter/material.dart';



void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

List<String> digimonNames = [
  'greymon',
  'metalgreymon',
  'wargreymon',
  'garurumon',
  'weregarurumon',
  'metalgarurumon',
  'stingmon',
  'megaseadramon',
  'valkyrimon',
];

var digimonLevels = {
  'metalgarurumon' : 'mega',
  'garurumon' : 'champion',
  'weregarurumon' : 'ultimate',
  'greymon' : 'champion',
  'metalgreymon' : 'ultimate',
  'valkyrimon' : 'mega',
  'megaseadramon' : 'ultimate',
  'stingmon' : 'champion',
  'wargreymon' : 'mega',
};

var digimonTypes = {
  'metalgarurumon' : 'Data',
  'garurumon' : 'Data',
  'weregarurumon' : 'Data',
  'greymon' : 'Vaccine',
  'metalgreymon' : 'Vaccine',
  'valkyrimon' : 'Vaccine',
  'megaseadramon' : 'Data',
  'stingmon' : 'Data',
  'wargreymon' : 'Vaccine',
};



class _NinjaCardState extends State<NinjaCard> {


  int imageIndex = 0;
  String currentImage = '';



  @override
  Widget build(BuildContext context) {



    // for (var i = 0; i < digimonLevels.length; i++) {
    //   print(digimonLevels[digimonNames[i]]);
    // }



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
                'images/' + digimonNames[imageIndex] + '.png',
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
                digimonNames[imageIndex].toUpperCase(),
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
                digimonLevels[digimonNames[imageIndex]].toString().toUpperCase(),
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
                  digimonTypes[digimonNames[imageIndex]].toString() + '-Type',
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
            if (imageIndex == digimonNames.length-1) imageIndex = 0;
            else imageIndex++;
            print(digimonNames[imageIndex]);
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


