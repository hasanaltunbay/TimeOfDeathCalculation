import 'package:flutter/material.dart';
import 'package:olumyasihesaplama/SonucSayfasi.dart';
import 'package:olumyasihesaplama/bilgiler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int boy=170;
  int kilo=70;

  double sporGunSayisi=3;
  double icilenSigara=15;
  double icilenIcki=10;
  double uyku=8;
  String secilenCinsiyet="ERKEK";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("YAŞAM BEKLENTİSİ"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(

                      children: [
                      Row(children: [
                        Text("BOY".toString(), style: TextStyle(fontSize: 18)),
                        SizedBox(width: 20,),
                        Text(boy.toString(),style: TextStyle(fontSize: 18),),
                      ],),
                      Row(children: [
                        IconButton(onPressed:(){
                          setState(() {
                            boy=boy-1;
                          });
                        },
                         icon: Icon(Icons.arrow_back)),

                        IconButton(onPressed:(){
                          setState(() {
                            boy=boy+1;
                          });
                        },
                        icon: Icon(Icons.arrow_forward)),
                      ],),
                      ],),
                    SizedBox(width: 50,),

                    Column(children: [
                      Row(children: [
                        Text("KİLO", style: TextStyle(fontSize: 18)),
                        SizedBox(width: 20,),
                        Text(kilo.toString(),style: TextStyle(fontSize: 18),),
                      ],),
                      Row(children: [
                        IconButton(onPressed:(){
                          setState(() {
                            kilo=kilo-1;
                          });
                        }, icon: Icon(Icons.arrow_back)),

                        IconButton(onPressed:(){
                          setState(() {
                            kilo=kilo+1;
                          });
                        }, icon: Icon(Icons.arrow_forward)),
                      ],),
                    ],),
                  ],
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Haftada Kaç Gün Spor Yapıyorsun?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('${sporGunSayisi.round()}'.toString(),style: TextStyle(fontSize: 20),),
                  Slider(
                    min: 0,
                    max: 30,
                    activeColor: Colors.lightBlue,
                    value: sporGunSayisi,
                    onChanged: (double yeniDeger){
                      setState(() {
                        sporGunSayisi=yeniDeger;
                      });
                    },
                  ),
              ],),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Günde Kaç Sigara İçiyorsunuz?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('${icilenSigara.round()}'.toString(),style: TextStyle(fontSize: 20)),
                  Slider(
                    min: 0,
                    max: 30,
                    activeColor: Colors.lightBlue,
                    value: icilenSigara,
                    onChanged: (double yeniDeger){
                      setState(() {
                        icilenSigara=yeniDeger;
                      });
                    },


                  ),
                ],),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Haftada Kaç Bardak İçki İçiyorsunuz?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('${icilenIcki.round()}'.toString(),style: TextStyle(fontSize: 20)),
                  Slider(
                    min: 0,
                    max: 30,
                    activeColor: Colors.lightBlue,
                    value: icilenIcki,
                    onChanged: (double yeniDeger){
                      setState(() {
                        icilenIcki=yeniDeger;
                      });
                    },
                  ),
                ],),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Günde Kaç Saat Uyuyorsunuz?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('${uyku.round()}'.toString(),style: TextStyle(fontSize: 20)),
                  Slider(
                    min: 0,
                    max: 30,
                    activeColor: Colors.lightBlue,
                    value: uyku,
                    onChanged: (double yeniDeger){
                      setState(() {
                        uyku=yeniDeger;
                      });
                    },
                  ),
                ],),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(onTap: (){
                    setState(() {
                      secilenCinsiyet="KADIN";
                    });
                  },
                    child: Container(
                      color: secilenCinsiyet=="KADIN"? Colors.lightBlue[100]: Colors.white,
                      child: Column(children: [
                      Icon(Icons.female,size: 48,color: Colors.black54,),
                      Text("KADIN",style: TextStyle(fontSize: 20)),
                    ],),),
                  ),

                  SizedBox(width: 50,),

                  GestureDetector(onTap: (){
                    setState(() {
                      secilenCinsiyet="ERKEK";
                    });
                  },
                    child: Container(color: secilenCinsiyet=="ERKEK"? Colors.lightBlue[100]: Colors.white,
                      child: Column(children: [
                      Icon(Icons.male,size: 48,color: Colors.black54,),
                      Text("ERKEK",style: TextStyle(fontSize: 20)),
                    ],),),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => SonucSayfa(
                  Bilgiler(boy, kilo, sporGunSayisi, icilenSigara, icilenIcki, uyku, secilenCinsiyet)
                )));
              }, child: Text("HESAPLA",style: TextStyle(fontSize: 22),))
            ],
          ),
        ),
      ),

    );
  }
}
