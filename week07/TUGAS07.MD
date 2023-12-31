Nama : Mohammad Halim Perdana

Kelas : 3F

**Langkah 1: Buat Project Baru**

Buatlah sebuah project flutter baru dengan nama **layout_flutter**. Atau sesuaikan style laporan praktikum yang Anda buat.

Langkah 2: Buka file **lib/main.dart**

Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.

<<<<<<< HEAD
![all text](docs/pratikum1/1.PNG)
=======
![Alt text](docs/pratikum1/1.PNG)
>>>>>>> cc2360e9d62ea853528d48e4ed8cf05997180b0c

## **Langkah 3: Identifikasi layout diagram**

Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:

- Identifikasi baris dan kolom.
- Apakah tata letaknya menyertakan kisi-kisi (grid)?
- Apakah ada elemen yang tumpang tindih?
- Apakah UI memerlukan tab?
- Perhatikan area yang memerlukan alignment, padding, atau borders.

Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.

## **Langkah 4: Implementasi title row**

Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:

![all text](docs/pratikum1/2.PNG)

**/\* soal 1 \*/** Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

**/\* soal 2 \*/** Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks 'Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

![all text](docs/pratikum1/3.jpeg)

**/\* soal 3 \*/** Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text 'Hello World' dengan variabel titleSection seperti berikut:

![all text](docs/pratikum1/4.jpeg)

##

## 4. Praktikum 2: Implementasi button row

Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

## **Langkah 1: Buat method Column \_buildButtonColumn**

Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

**lib/main.dart (\_buildButtonColumn)**

![all text](docs/pratikum2/1.PNG)

![Screenshot langkah 1](docs/pratikum2/1.png)

## **Langkah 2: Buat widget buttonSection**

Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():

**lib/main.dart (buttonSection)**

![all text](docs/pratikum2/2.PNG)

## **Langkah 3: Tambah button section ke body**

Tambahkan variabel buttonSection ke dalam body seperti berikut:

![all text](docs/pratikum2/3.PNG)

## 5. Praktikum 3: Implementasi text section

Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

## **Langkah 1: Buat widget textSection**

Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

![all text](docs/pratikum3/1.PNG)

Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.

## **Langkah 2: Tambahkan variabel text section ke body**

Tambahkan widget variabel textSection ke dalam body seperti berikut:

![all text](docs/pratikum3/2.PNG)

## Tugas

### Row

![all text](docs/tugas/row.PNG)

### Column

![all text](docs/tugas/column.PNG)

### axis zize

![all text](docs/tugas/axisZize.PNG)

### Main Axis Zize

![all text](docs/tugas/axisAligment.PNG)

### Cross Axis Aligment

![all text](docs/tugas/crosAxisAligment.PNG)

### Flexibel Widget

![all text](docs/tugas/fexibleWidget.PNG)

### Expanded Widget

![Alt text](docs/tugas/expandedWidget.PNG)

### Sized Box Widget

![Alt text](docs/tugas/sizedBoxWidget.PNG)

### Spacer Widget

![Alt text](docs/tugas/spacerWidget.PNG)

### Text Widget

![Alt text](docs/tugas/textWidget.PNG)

### Icon Widget

![Alt text](docs/tugas/iconWidget.PNG)

### Image Widget

![Alt text](docs/tugas/iconWidget2.PNG)

### part 1

![Alt text](docs/tugas/part1.PNG)

### part 2

![Alt text](docs/tugas/part2.PNG)
![Alt text](docs/tugas/part2.PNG)
