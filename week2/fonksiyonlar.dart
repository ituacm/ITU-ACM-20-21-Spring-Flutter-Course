void main(){
  selam();
  selam();
  selam();

  selam2("Hasan");

  var hesapsonucu = faizHesap(10000, 2);
  print(hesapsonucu);

  test1(15);
}

void selam(){
  print("Selam");
}

void selam2(String kullaniciAdi){
  print("Selam " + kullaniciAdi);
}

double faizHesap(double krediTutari, double yuzde){
  var sonuc = krediTutari * yuzde /100;
  print(sonuc);
  return sonuc;
}

void test1(int x1,[int? x2, int? x3]) { // optional parametre
  print(x1);
  print(x2);
  print(x3);
}

void test2({int? y1,int? y2}){ // named paratmer
  print(y1);
  print(y2);
}