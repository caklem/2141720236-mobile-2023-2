
// import 'dart:html';

void  tampilMahasiswa(String nama, {int nim = 2141720236}){
  print('Nama: $nama Nim: $nim');
}
 
// void main(){
//   // tampilMahasiswa("M. Halim Perdana");
// //   tampilDataDiri('M. Halim perdana', hitungUmur(2001));
  
// // }
// //  int hitungUmur( int tahunLahir){
// //     return 2023-tahunLahir;
// //   }
// //   void tampilDataDiri(String nama, int umur){
// //     print('$nama berumur $umur tahun');

//   }

//   void main(){
// // var multiply = (int a, int b) => a * b;

// // print(multiply(3, 4)); // Output: 12

// // var showNama = (){
// //   var nama  = "M. Halim Perdana";
// //   print(nama);
// //   void showNim(){
// //     var nim = "2141720236";
// //     print(nim);
// //   }
// //   showNim();
// // };

// // showNama();
  
//   }

void main() {
  
  var text = "Belajar Pemograman Mobile Sangat Seru! ";
  var (TextList, textLength, wordCount) = getTextInfo(text);

  print('Text List: $TextList\nText Length: $textLength\nWord Count: $wordCount');
  
}

(List<String>, int, int) getTextInfo(String text){
  var textResult = text.split(' ');
  var textLength = text.length;
  var wordCount = textResult.length;
  return(textResult, textLength, wordCount);
}

