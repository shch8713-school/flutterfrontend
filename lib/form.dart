import 'package:flutter/material.dart';
import 'package:flutter_alert/flutter_alert.dart';

// ignore: camel_case_types
class Form_ extends StatefulWidget {
  @override
  form_state createState() => form_state();

}

// ignore: camel_case_types
class form_state extends State<Form_> {
  void _showQuestionDialog() {
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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      floatingActionButton: new FloatingActionButton(onPressed: null),
      appBar: new AppBar(
        backgroundColor: new Color(0xFFFFAB40),
        title: new Text('Register your Pick-Up account'),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            //Name (first, last)
            //phone number
            //email
            //choose your user name (optional)
            //choose your password
            //confirm password
            new Text(
              "Register your Pick-Up account",
              style: new TextStyle(
                  fontSize: 23.0,
                  color: const Color(0xFFFFAB40),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"
              ),
              textAlign: TextAlign.center,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Flexible(
                  child: new TextField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.person),
//                      hintText: 'Enter your first name',
                      labelText: "First Name",
                      contentPadding: EdgeInsets.all(10),
                    ),
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.center,
                    style: new TextStyle(fontSize:16.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ),
                ),
                SizedBox(width: 15.0,),
                new Flexible(
                  child: new TextField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.person),
//                      hintText: 'Enter your last name',
                      labelText: "Last Name",
                      contentPadding: EdgeInsets.all(10),
                      //hasFloatingPlaceholder: false,
                    ),
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.center,
                    style: new TextStyle(fontSize:16.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ),
                ),
              ],
            ),
            new TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: const Icon(Icons.email),
//                  hintText: 'Enter',
                  labelText: "Your email address",
                ),
//                keyboardType: TextInputType.multiline,
//                maxLines: 3,
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize:16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
            ),
            new TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.perm_identity),
//                  hintText: 'Enter',
                  labelText: "Pick an username for this account",
                ),
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize:16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
            ),
            new TextField(
                decoration: InputDecoration(
//                  icon: const Icon(Icons.lock),
                  hintText: 'Enter',
                  labelText: "Choose a password",
                ),
                obscureText: true,
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize:16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
            ),
            new TextField(
                decoration: InputDecoration(
                  //icon: const Icon(Icons.lock_open),
                  icon: const Icon(Icons.lock),
//                  hintText: 'Enter',
                  labelText: "Enter your new password again",
                ),
                obscureText: true,
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize:16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
            ),
            ButtonBar(
              children: <Widget>[
                ButtonTheme(
                  minWidth: 4.00,
                  height: 35.00,
                  child: RaisedButton(
                    child: Align(alignment: Alignment.center, child: Text("Submit",
                      style: TextStyle(
                        fontSize: 16.00, //The max size can fit in the button bar
                      ),
                    ),
                    ),
                    textColor: Colors.orangeAccent,
                    color: Colors.white,
                    elevation: 4.0, //shadow of button
                    splashColor: Color(0xFF424242),//it revealed white only when it's in a pressed state
                    onPressed: () => _showQuestionDialog(),
//                    {
//                      // TODO: Show the next page (101)
//                      Navigator.of(context).pushNamed('/map');
//                      print("home_map");
//                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
//      floatingActionButton: new FloatingActionButton(
//          elevation: 4.0,
//          child: Text("Submit"),
//          backgroundColor: new Color(0xFFFFAB40),
//          onPressed: (){
//            Navigator.of(context).pushNamed('/home');
//          }),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
