
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Wisata Pantai di Malang',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(
                color: Colors.black45
                
              ),
            ),
          ],
        ),
      ),

      
      /* soal 3*/
      Icon(
       Icons.star,
        color: Colors.red,
      ),
      const Text("41"),
    ],
  ),
);
  @override 
  Widget build(BuildContext context) {
     Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter layout: Mohammad Halim perdana 2141720236',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [Image.network('https://ik.imagekit.io/tvlk/loc-asset/gNr3hLh55ZCkPJisyxFK-v9MmzxPu57ZRVI+10VZ2S4b1PNW4T++cbA6yK4gzhAhs9o2HLZ9vs7gy3rpcIU+oKi5EygzQLRjTUv7fRblEVA=/images/1530178047185-1920x1078-FIT_AND_TRIM-839640ca31f0b912cc85bc9bc38f52c1.jpeg?_src=imagekit&tr=c-at_max,h-400,q-40,w-1280%201x,%20https://ik.imagekit.io/tvlk/loc-asset/gNr3hLh55ZCkPJisyxFK-v9MmzxPu57ZRVI+10VZ2S4b1PNW4T++cbA6yK4gzhAhs9o2HLZ9vs7gy3rpcIU+oKi5EygzQLRjTUv7fRblEVA=/images/1530178047185-1920x1078-FIT_AND_TRIM-839640ca31f0b912cc85bc9bc38f52c1.jpeg?_src=imagekit&tr=dpr-2,c-at_max,h-400,q-40,w-1280%202x,%20https://ik.imagekit.io/tvlk/loc-asset/gNr3hLh55ZCkPJisyxFK-v9MmzxPu57ZRVI+10VZ2S4b1PNW4T++cbA6yK4gzhAhs9o2HLZ9vs7gy3rpcIU+oKi5EygzQLRjTUv7fRlEVA=/images/1530178047185-1920x1078-FIT_AND_TRIM-839640ca31f0b912cc85bc9bc38f52c1.jpeg?_src=imagekit&tr=dpr-3,c-at_max,h-400,q-40,w-1280%203x')
          ,titleSection,buttonSection,textSection,
          ],
        ),
      ),
    );
  }
}
// PRATIKUM02

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    "Pantai adalah sebidang wilayah alami yang bertemu antara daratan dan lautan atau sungai." 
    "Di tepi pantai, Anda dapat menemukan pasir putih yang lembut, ombak yang berirama, dan pemandangan air yang luas."
     "Pantai sering menjadi tujuan populer untuk liburan, rekreasi, dan bersantai." 
     "Aktivitas yang umum dilakukan di pantai termasuk berjemur, berenang, berselancar, bermain voli pantai, atau hanya menikmati keindahan alam dan keindahan matahari terbenam."
     "Pantai adalah tempat yang menawarkan ketenangan dan keindahan alam yang luar biasa, yang membuatnya menjadi tujuan liburan yang dicintai oleh banyak orang di seluruh dunia."
    'Mohammad Halim perdana 2141720236.',
    softWrap: true,
  ),
);

