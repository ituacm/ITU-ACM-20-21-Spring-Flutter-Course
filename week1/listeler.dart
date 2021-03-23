void main(){

  List rakamlar = [0,1,2,3,4,5,6,7,8,9];  // listeler birden çok değişken tutmamızı sağlar
  print(rakamlar);


  rakamlar[1] = 20; // rakamlar listesinin 1.sıradaki elemanını yani 1 rakamını (listelerde saymaya 0 dan başlanır) 20 ye eşitledik
  print(rakamlar);// yazdırınca 1 yerine 20 geldiğini göreceksiniz



  rakamlar.add(1); // şimdi listemize eksik olan rakamımızı ekledik
  rakamlar.remove(20); // ve fazlalık olan sayıyı kaldırdık

  print(rakamlar);
  // gördüğünüz gibi rakamlar değerlerine göre değil listeye eklenme sırasına göre dizildi

  
}