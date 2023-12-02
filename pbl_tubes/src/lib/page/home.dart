import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:ocr_bpjs/page/kamera.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> iklans = ["assets/iklan.png", "assets/iklan2.png", "assets/iklan.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Selamat Datang", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
              Text("Alvaro Hegel")
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 186,
            child: Stack(
              children: [
                Positioned.fill(child: Image.asset('assets/bg-bpjs.png', fit: BoxFit.cover,)),
                Positioned.fill(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Chip(label: Text("Silahkan Scan BPJS ANda"), backgroundColor: Colors.amber,),
                      Text("BPJS Pemilik"),
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Kamera(),),);
                      }, child: Text("Scan Disini"), style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),)),
                    ],
                  ),
                ),),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Image.asset('assets/testing.png'),
          SizedBox(
            height: 16,
          ),
          FlutterCarousel(
  options: CarouselOptions(
    height: 300.0, 
    showIndicator: false,
    slideIndicator: CircularSlideIndicator(),
  ),
  items: iklans.map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            // color: Colors.amber
            image: DecorationImage(image: AssetImage(i))
          ),
          child: SizedBox(),
          
        );
      },
    );
  }).toList(),
),
        ],),
      ),
    );
  }
}