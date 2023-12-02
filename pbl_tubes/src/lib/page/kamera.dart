import 'package:flutter/material.dart';
import 'package:mask_for_camera_view/mask_for_camera_view.dart';
import 'package:mask_for_camera_view/mask_for_camera_view_result.dart';

class Kamera extends StatefulWidget {
  const Kamera({super.key});

  @override
  State<Kamera> createState() => _KameraState();
}

class _KameraState extends State<Kamera> {
  late List<CameraDescription> cameras;

  Future<void> getCamera() async {
    cameras = await MaskForCameraView.initialize();
    print(cameras);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getCamera(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            
           return MaskForCameraView(
  visiblePopButton: true,
  // [cameras.first] is rear camera.
  cameraDescription: cameras[0],
  onTake: (MaskForCameraViewResult? res) {
    // res.croppedImage is cropped image, you can use it.
  }
);
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}
