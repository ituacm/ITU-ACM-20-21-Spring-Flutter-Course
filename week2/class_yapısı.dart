void main(){
  PersonelManager personelManager = PersonelManager();

  personelManager.add();
  personelManager.delete();
  personelManager.update();

  CustomerManager customerManager = CustomerManager();

  
  Customer customer = Customer.withInfo("Hasan","Ali");
  
  Customer customer2 = Customer();

  customer2.firstName="Müsteri";
  customer2.lastName="2";

  customerManager.add(customer);
  customerManager.add(customer2);
}

class PersonelManager{

  void add(){
    print("eklendi" );
  }

  void delete(){
    print("silindi");
  }

  void update(){
    print("güncellendi");
  }
}

class CustomerManager{

  void add(Customer customer){
    print("eklendi " + customer.firstName.toString());
  }

  void delete(){
    print("silindi");
  }

  void update(){
    print("güncellendi");
  }
}

class Customer{
  String? firstName;
  String? lastName;

  // constructer
  Customer.withInfo(String firstName,String lastName){
    this.firstName = firstName;
    this.lastName = lastName;
  }

  Customer(){ 

  }
}

class Personel extends Person{
  int? salary;

  // constructer
  Personel.withInfo(String firstName,String lastName,int salary){
    this.firstName = firstName;
    this.lastName = lastName;
    this.salary = salary;
  }
}

class Person{
  String? firstName;
  String? lastName;
}