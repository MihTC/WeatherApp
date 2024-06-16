import 'package:flutter/material.dart';

const linkAsset = 'assets/images/weathers/';

class AssetCustom {
  static String getLinkImage(String name) =>
      '$linkAsset${name.replaceAll(' ','').toLowerCase()}.png';
}

class myKey {
  static const String api_token = '947f9fc94657c67e88de3314f8099021';
}

Widget createTemp (num temp, {double size = 100 }) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        temp.round().toString(),
        style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      Text(
        '0',
        style: TextStyle(
            fontSize: size / 3,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      )
    ],
  );
}