# Praikum Minggu ke 8

### Langkah 1: Siapkan project baru

Sebelum melanjutkan praktikum, terlebih dahulu membuat project baru Flutter dengan nama belanja, dengan membuat susunan folder sebagaimana gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.

![Alt text](assets/pratikum/1.png)

#### Langkah 2: Mendefinisikan class HomePage dan ItemPage Secara Lengkap

Buat dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, kemudian deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Lalu buat data model di class HomePage yang nanti kita pindahkan ke class ItemPage. Lalu dilanjut melengkapi class HomePage dengan List Item. Yang terakhir yaitu membuat tampilan pada kedua class dengan menambahkan aksi onTap untuk pindah ke halaman ItemPage.

### kode item.dart

```dart
class Item {
  String name, imageUrl;
  int price, stok;
  double rating;

  Item(
      {required this.name,
      required this.price,
      required this.imageUrl,
      required this.stok,
      required this.rating});
}

```

### Kode home_page.dart

```dart
import 'package:week08/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Caliburn AK3 POD Vape',
        price: 300000,
        imageUrl: '../assets/1.webp',
        stok: 60,
        rating: 5.0),
    Item(
        name: 'Smok solus POD Kit',
        price: 200000,
        imageUrl: '../assets/3.jpg',
        stok: 50,
        rating: 4.9),
    Item(
        name: 'voopo vinci POD',
        price: 350000,
        imageUrl: '../assets/3.jpg',
        stok: 30,
        rating: 4.5),
    Item(
        name: 'Pod Ursa Nano',
        price: 190000,
        imageUrl: '../assets/4.webp',
        stok: 80,
        rating: 4.8),
    Item(
        name: 'Uwell Caliburn ak2 ',
        price: 11490,
        imageUrl: '../assets/5.jpg',
        stok: 21,
        rating: 4.6),
    Item(
        name: 'SMOK kit Mod RPM40',
        price: 350000,
        imageUrl: '../assets/6.webp',
        stok: 20,
        rating: 5.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'productImage${item.name}',
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(item.imageUrl, fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.yellow),
                            Text(
                              item.rating.toString(),
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Rp. ${item.price}',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      'Terjual: ${item.stok}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomAppBar(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 139, 191, 229),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mohammad Halim Perdana',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '2141720236',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




```

### Kode item_page.dart

```dart
import 'package:week08/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    final double aspectRatio =
        1; // Menggunakan nilai tetap rasio aspek (1) yang telah Anda tentukan sebelumnya

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'productImage${itemArgs.name}',
                  child: AspectRatio(
                    aspectRatio: aspectRatio,
                    child: Image.asset(
                      itemArgs.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${itemArgs.name}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber),
                        Text(
                          itemArgs.rating.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rp. ${itemArgs.price}',
                      style: const TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Stok: ${itemArgs.stok}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


```

### Hasil Run

![Alt text](assets/pratikum/mobile.gif)
