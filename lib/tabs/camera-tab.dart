import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraTab extends StatefulWidget {

    final List<CameraDescription> cameras;

    CameraTab(this.cameras);

    @override
    _CameraState createState() => _CameraState();
}

class _CameraState extends State<CameraTab> {

    CameraController cameraController;

    @override
    void initState() {
        super.initState();
        cameraController = new CameraController(widget.cameras[0], ResolutionPreset.medium);
        cameraController.initialize().then((_) {
            if (!mounted) {
                return;
            }
            
            setState(() {
              
            });
        });
    }
    
    @override
    void dispose() {
        cameraController?.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        if(!cameraController.value.isInitialized) {
            return Container();
        }
        
        return new AspectRatio(
            aspectRatio: cameraController.value.aspectRatio,
            child: new CameraPreview(cameraController),
        );
        
    }
}
