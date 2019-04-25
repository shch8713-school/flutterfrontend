import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class Form_ extends StatefulWidget {
  @override
  form_state createState() => form_state();

}

// ignore: camel_case_types
class form_state extends State<Form_> {

//  String _phoneNumberValidator(String value) {
//    Pattern pattern = r'/^(?:[+0]9)?[0-9]{10}$/';
//    RegExp regex = new RegExp(pattern);
//    if (!regex.hasMatch(value))
//      return 'Enter Valid Phone Number';
//    else
//      return null;
//  }
  // ignore: non_constant_identifier_names
  final _first_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  final _last_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  final _phone_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  final _email_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  final _pass_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  final _confirm_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  bool _validate_first = false;
  // ignore: non_constant_identifier_names
  bool _validate_last = false;
//  bool _validate_phone = false;
  // ignore: non_constant_identifier_names
  bool _validate_email = false;
  // ignore: non_constant_identifier_names
  bool _validate_pass = false;
  // ignore: non_constant_identifier_names
  bool _validate_confirm = false;

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
            SizedBox(height: 30.0),
            //Name (first, last)
            //phone number
            //email
            //choose your user name (optional)
            //choose your password
            //confirm password
            Column(
              children: <Widget>[
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
                        controller: _first_controller,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.person),
    //                      hintText: 'Enter your first name',
                          labelText: "First Name",
                          contentPadding: EdgeInsets.all(10),
                          errorText: _validate_first ? 'Empty Name' : null
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
                        controller: _last_controller,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.person),
    //                      hintText: 'Enter your last name',
                          labelText: "Last Name",
                          contentPadding: EdgeInsets.all(10),
                            errorText: _validate_last ? 'Empty Name' : null
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
                    controller: _phone_controller,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.phone_iphone),
                      //                  hintText: 'Enter',
                      labelText: "Enter your phone number (optional)",
//                        errorText: _phoneNumberValidator ? 'Name Can\'t Be Empty' : null
                    ),
                    textAlign: TextAlign.center,
                    style: new TextStyle(fontSize:16.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto")
                ),
                new TextField(
                    controller: _email_controller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.email),
    //                  hintText: 'Enter',
                      labelText: "Your email address",
                        errorText: _validate_email ? 'Email Can\'t Be Empty' : null
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
                    controller: _pass_controller,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
    //                  hintText: 'Enter',
                      labelText: "Choose a password",
                        errorText: _validate_pass ? 'Password Can\'t Be Empty' : null
                    ),
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: new TextStyle(fontSize:16.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto")
                ),
                new TextField(
                    controller: _confirm_controller,
                    decoration: InputDecoration(
                      //icon: const Icon(Icons.lock_open),
                      icon: const Icon(Icons.lock),
    //                  hintText: 'Enter',
                      labelText: "Enter your new password again",
                        errorText: _validate_confirm ? 'Confirm Password Can\'t Be Empty' : null
                    ),
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: new TextStyle(fontSize:16.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto")
                ),
                SizedBox(height: 20.0),
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
                    textColor: Colors.white,
                    color: Colors.orangeAccent,
                    elevation: 4.0, //shadow of button
                    splashColor: Color(0xFF424242),//it revealed white only when it's in a pressed state
                    onPressed: (){
                      setState(() {
                        _first_controller.text.isEmpty ? _validate_first = true : _validate_first = false;
                        _last_controller.text.isEmpty ? _validate_last = true : _validate_last = false;
                        _email_controller.text.isEmpty ? _validate_email = true : _validate_email = false;
                        _pass_controller.text.isEmpty ? _validate_pass = true : _validate_pass = false;
                        _confirm_controller.text.isEmpty ? _validate_confirm = true : _validate_confirm = false;
                      });

                      if (_validate_first == true){
                        return _first_controller.text.isEmpty;
                      }else {
                        Navigator.of(context).pushNamed('/profile');
                      }
                      if (_validate_last == true){
                        return _last_controller.text.isEmpty;
                      }else {
                        Navigator.of(context).pushNamed('/profile');
                      }
                      if (_validate_email == true){
                        return _email_controller.text.isEmpty;
                      }else {
                        Navigator.of(context).pushNamed('/profile');
                      }
                      if (_validate_pass == true){
                        return _pass_controller.text.isEmpty;
                      }else {
                        Navigator.of(context).pushNamed('/profile');
                      }
                      if (_validate_confirm == true){
                        return _confirm_controller.text.isEmpty;
                      }else {
                        Navigator.of(context).pushNamed('/profile');
                      }
                    },
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
