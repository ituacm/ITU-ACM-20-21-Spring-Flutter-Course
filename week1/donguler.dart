void main() {
  int x = 3;
  List y = [5,6,7];  

  // for döngüsü

  // for dngüsü ile y listemizi yazdıralım

  for (var i = 0; i < 3; i++) {
    print(y[i]);
  }

  // liste uzunluğunu y.length diyerek de verebiliriz ve çoğu zaman daha sağlıklı olacaktır
  for (var i = 0; i < y.length; i++) {
    print(y[i]);
  }

  // while

  // x<6 koşulu sağlandığı sürece while dönügüsü çalışmaya devam eder
  while(x<6){
    print(x);
    x++; // her tekrarda x değerini 1 arttırdık ki sonsuza kadar x değerini yazdırmasın ekrana :)
  }


  // do while döngüsü
  // x değerimi şuan 6 
  print("x değerimiz şuan : "+x.toString());
  // burada ise do içine yazdığımız kod çalışır ardından while koşulu sağlanırsa tekrar eder kendisini 
  do {
    print("do while da x değeri : $x"); // text içinde $ işareti koyup değişkeni yazarak yazdırabiliriz
    x++;  // x değeri 7 oldu
  } while (x<6); // koşul sağlanmıyor ama kod 1 kez çalıştı çünkü önce do sonra while okunur 

}