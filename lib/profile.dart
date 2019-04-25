import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_alert/flutter_alert.dart';

// ignore: camel_case_types
class profile_upload extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile_upload> {
  // ignore: non_constant_identifier_names
  void _QuestionDialogToHome() {
    showAlert(
      context: context,
      title: 'Allow "Pick-UP" to access your location?',
      body: "Your location will not be displayed or shared with others.",
      actions: [
        AlertAction(
          text: "Don't Allow",
          isDestructiveAction: true,
          onPressed: () {
            print("Do Nothing");
//            Navigator.of(context).pushNamed('/');
          },
        ),
        AlertAction(
          text: "Allow",
          isDestructiveAction: true,
          onPressed: () {
            Navigator.of(context).pushNamed('/map'); //Direct to home page
            print('home page: map');
          },
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  void _QuestionDialogBack() {
    showAlert(
      context: context,
      title: 'This will take you back to the login page.',
      body: "Once you're back to the login page, you can log in with the info you filled out previously.",
      actions: [
        AlertAction(
          text: "Cancel",
          isDestructiveAction: true,
          onPressed: () {
            print("Do Nothing");
//            Navigator.of(context).pushNamed('/');
          },
        ),
        AlertAction(
          text: "Do it!",
          isDestructiveAction: true,
          onPressed: () {
            Navigator.of(context).pushNamed('/'); //Direct to home page
            print('Back to login page');
          },
        ),
      ],
    );
  }

  File _image;
//  File image;
  Future getCamera(Container container) async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera,);
    if (image != null){
      _image = image;
      print(image.path);
      setState(() {
        _image = image;
      });
    }
  }

  Future getGallery(Container container) async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery,);
    if (image != null){
      _image = image;
      print(image.path);
      setState(() {
        _image = image;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
          ListView(
            children: <Widget>[
//              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          color: Colors.white,
                          iconSize: 32.00,
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => _QuestionDialogBack(),
                        ),
                      ),
              ),
              Column(
                children: <Widget>[
                    Center(
                      child: new Container(
                        width: 150.0,
                        height: 150.0,
                        child: Center(
                              child: _image == null
                                  ? Text('No image selected.')
                                  : Image.file(_image),
                        ),
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(color: Colors.white),
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: ExactAssetImage('assets/default_profile.jpg')
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                        Text(
                          "Click icon to upload picture",
                          style: new TextStyle(
                              fontSize: 16.0,
                              color: const Color(0xFFFFFFFF),
//                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto"
                          ),
                          textAlign: TextAlign.center,
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                tooltip: 'Upload a picture by using camera',
                                color: Colors.white,
                                iconSize: 32.0,
                                icon: Icon(
                                    Icons.photo_camera
                                ),
                                onPressed: (){
                                  getCamera(Container(width: 350, height: 350,));
                                }
                            ),
                            SizedBox(width: 15.0,),
                            IconButton(
                                tooltip: 'Upload a picture from gallery',
                                color: Colors.white,
                                iconSize: 32.0,
                                icon: Icon(
                                    Icons.photo
                                ),
                                onPressed: () {
                                  getGallery(Container(width: 350, height: 350,));
                                }
                            ),
                          ],
                        ),
                  FlatButton(
                      onPressed: () => _QuestionDialogToHome(),
                      child: Text('Skip This Step',
                        style: TextStyle(
                          fontSize: 16.00,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                  ),
                ],
              ),
            ],
          ),
    ],
        ),
      backgroundColor: Colors.orangeAccent,
    );
  }
}




