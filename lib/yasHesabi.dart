import 'package:olumyasihesaplama/bilgiler.dart';

class YasHesaplama{

  late Bilgiler bilgiler;

  YasHesaplama(this.bilgiler);

  double hesapla(){
    double sonuc;

    sonuc=80+bilgiler.sporGunSayisi-bilgiler.icilenSigara-bilgiler.icilenIcki;

   if(bilgiler.secilenCinsiyet=="KADIN"){
     sonuc=sonuc+5;
   }else{
     sonuc=sonuc;
   }

   if(bilgiler.uyku>=10){
     sonuc=sonuc;
   }else{
     sonuc=sonuc+5;
   }
   sonuc=sonuc+bilgiler.boy/bilgiler.kilo;

   return sonuc;

  }
}