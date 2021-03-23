void main() {
  // Şart blokları

  // if-else

  int x = 4;
  int y = 5;

  if(x<5){
    print("x 5'den küçük olduğu için bu şart bloğu  çalışıyor");
  }



  if(x > 4){
    print("Bu şart bloğu çalışmaz çünkü x 4'ten büyük değil");
  }else{
    print("Yukarıdaki if şartı sağlanmadığı için bu else bloğu çaluşacak");
  }



  // örnek if else bloğu

  if (x<10) {
    if (x >= 0) {
      print("x bir rakamdır");
    }
  }else if (x<100) {
    print("x 2 basamaklı bir doğal sayıdır");
  }else{
    print("x negatif veya  99'dan büyük");
  }



//********************************************************** 

// swithc-case şart blokları


  switch(y){  // y değişkenini değer olarak verdiğimiz için y üzerinden işlem yapacak

    // switch'de verdiğimiz değer(y) ile case de verdiğimiz değer eşit ise case bloğu çalışır 
    case 3: {
      // case değerimiz(3) ile switch değerimiz(y) eşit olmadığı için bu blok çalışmayacak

      print("y == 3"); // if else durumundaki (y == 3) ile aynı durum 
    }
    break; // her case sonrası break koymamız lazım ki diğer case durumları kontrol edilsin

    case 5: {
      print("y 5'e eşittir"); // switch ve case değeri aynı olduğu için çalışacak
    }
    break;
    default:{
      print("y bir tam sayı"); // default kısmında yazdığımız ise yukarıdaki hiçbir case sağlanmazsa çalışan  kod bloğu
    }
  }

}