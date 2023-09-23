void main(){
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var num = (64, 32);

  var record2 = tukar(num);
  print(record2);

  (String, int) mahasiswa;
  mahasiswa = ('M. Halim Perdana', 2141720236);
  print(mahasiswa);

  var mahasiswa2 =('M. Halim Perdana', a: 2141720236, b: true, 'last');
  
  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int)record){
  var (a, b) = record;
  return (b, a);
}