import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olumyasihesaplama/bilgiler.dart';
import 'package:olumyasihesaplama/yasHesabi.dart';

class SonucSayfa extends StatelessWidget {

  late Bilgiler bilgi;


  SonucSayfa(this.bilgi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("ÖLÜM YAŞIN"),backgroundColor: Colors.blueAccent,),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Center(child: Text("Yaşam Beklenti Süreniz",style: TextStyle(fontSize: 30))),
          Center(child: Text(YasHesaplama(bilgi).hesapla().round().toString(),style: TextStyle(fontSize: 30))),
          ElevatedButton(
              onPressed:(){
                Navigator.pop(context);
              },
              child:
              Text(
                "ANASAYFA",style: TextStyle(fontSize: 25)
              )
          )
        ],
      ),
    );
  }
}
