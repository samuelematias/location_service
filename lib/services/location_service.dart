import 'dart:async';

import 'package:location/location.dart';
import 'package:location_service/datamodels/user_location.dart';

class LocationService {
  // Keep track of current Location
  UserLocation _currentLocation;
  Location location = Location();

  // Continuously emit location updates
  StreamController<UserLocation> _locationController =
      StreamController<UserLocation>();

  Stream<UserLocation> get locationStream => _locationController.stream;

  LocationService() {
    // Request permission to use location
    location.requestPermission().then((PermissionStatus granted) {
      if (granted == PermissionStatus.granted) {
        // If granted listen to the onLocationChanged stream and emit over our controller
        location.onLocationChanged.listen((LocationData currentLocation) {
          if (currentLocation != null) {
            _locationController.add(UserLocation(
              latitude: currentLocation.latitude,
              longitude: currentLocation.longitude,
            ));
          }
        });
      }
    });
  }

  Future<UserLocation> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(
        latitude: userLocation.latitude,
        longitude: userLocation.longitude,
      );
    } on Exception catch (e) {
      print('Could not get location: ${e.toString()}');
    }

    return _currentLocation;
  }
}
