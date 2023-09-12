void main(){
  String nama = "Mohammad Halim Perdana";
  String nim = "2141720236";
  for (int num = 0; num <= 201; num++){
    if (isPrime(num)){
      print("Bilangan Prima: $num");
      print("Nama Lengkap: $nama");
      print("NIM: $nim");
    print("");

    }
  }
}

bool isPrime (int num) {
  if (num <= 1){
    return false;
  }
  for (int i = 2; i<num ~/ 2; i++){
    if (num % i==0){
      return false;
    }
  }
  return true;
}