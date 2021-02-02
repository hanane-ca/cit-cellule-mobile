import 'package:flutter/material.dart';
import 'package:learnProvider/data_center.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    DataCenter data = Provider.of<DataCenter>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFields(
                    hint: 'Enter ur name',
                    validator: (val) {
                      if (val == '') {
                        return 'Enter ur name';
                      } else {
                        return null;
                      }
                    },
                    onchange: (val) {
                      data.setName(val);
                    },
                  ),
                  TextFields(
                    hint: 'Enter ur phone',
                    icon: Icon(Icons.phone),
                    validator: (val) {
                      //return val.isEmpty ? 'enter ur phone' : null;
                      return val.length < 10 ? 'enter a valid num' : null;
                    },
                    onchange: (val) {
                      data.setPhone(val);
                    },
                  ),
                  TextFields(
                    hint: 'Enter ur email',
                    icon: Icon(Icons.email),
                    validator: (val) => val.isEmpty ? 'enter mail' : null,
                  ),
                  TextFields(
                    hint: 'Enter ur address',
                    icon: Icon(Icons.location_on),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {
                if (formKey.currentState.validate()) {
                  Navigator.pushNamed(context, '/nav');
                }
              },
              child: Text('Submit'),
              color: Colors.teal[100],
            )
          ],
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  final String hint;
  final Widget icon;
  final Function validator;
  final Function onchange;

  TextFields({this.hint, this.icon, this.validator, this.onchange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        onChanged: onchange,
        validator: validator,
        decoration: InputDecoration(
          hintText: hint,
          suffixIcon: icon,
        ),
      ),
    );
  }
}
