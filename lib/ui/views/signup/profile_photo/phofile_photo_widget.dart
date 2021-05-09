import 'package:crowd_sourcing/ui/views/signup/profile_photo/profile_photo_widgetmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfilePhotoWidget extends StatelessWidget {
  final Function onSubmit;
  final Function onBack;
  ProfilePhotoWidget({required this.onSubmit, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfilePhotoWidgetModel>.reactive(
      builder: (context, model, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Text(
              'Please set your profile picture',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 200.0,
                child: model.image,
              ),
            ),
            IconButton(
              icon: Icon(Icons.camera_alt),
              iconSize: 40,
              onPressed: model.setImage,
            ),
          ]),
          Text(
            'By creating account you are acknowledging that you are an employee of the company.',
            style: TextStyle(fontSize: 15.0),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green[700]),
                  onPressed: () => onSubmit(model.file),
                  child: const Text('Sign up'),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red[700]),
                onPressed: () {
                  onBack();
                },
                child: const Text('Back'),
              )
            ],
          ),
        ],
      ),
      viewModelBuilder: () => ProfilePhotoWidgetModel(),
    );
  }
}
