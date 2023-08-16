import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location{
  double? longtuide;
  double? latituide;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longtuide=position.longitude;
      latituide=position.latitude;
    } catch (e) {
      print(e);
    }
  }
}