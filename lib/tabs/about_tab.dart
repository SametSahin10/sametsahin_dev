import 'package:flutter/material.dart';
import 'package:sametsahin_dev/config/assets.dart';
import 'dart:html' as html;

import 'package:sametsahin_dev/config/constants.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 80),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Samet Şahin',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.github),
                    ),
                    label: Text('Github'),
                    onPressed: () => html.window.open(Constants.PROFILE_GITHUB, "Samet Sahin"),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.twitter),
                    ),
                    label: Text('Twitter'),
                    onPressed: () => html.window.open(Constants.PROFILE_TWITTER, 'Samet Sahin'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.linkedin),
                    ),
                    label: Text('Linkedin'),
                    onPressed: () => html.window.open(Constants.PROFILE_LINKEDIN, "Samet Sahin"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
