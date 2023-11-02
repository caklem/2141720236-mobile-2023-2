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

