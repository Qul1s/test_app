import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';


Widget map(zoom){
  return FlutterMap(
                options: MapOptions(
                    center: LatLng(51.2095695,51.3700292),
                    zoom: 13.6,
                    rotation: -90
                ),
                children: [
                    TileLayer(
                        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.app',
                    ),
                    PolylineLayer(
                      polylineCulling: false,
                      polylines: [
                          Polyline(
                            strokeWidth: 3,
                            points: [LatLng(51.197835, 51.373631), LatLng(51.197666, 51.372813), LatLng(51.214781, 51.366005), LatLng(51.216264, 51.374226), LatLng(51.221574, 51.372080), LatLng(51.221505, 51.371872), LatLng(51.219102, 51.372830), LatLng(51.218998, 51.372197),],
                            color: Colors.green.shade700,
                          ),
                      ],
                  ),
                    MarkerLayer(
                        markers: [
                            Marker(
                              rotate: true,
                              point: LatLng(51.197835, 51.373631),
                              builder: (context) => Icon(Icons.location_on, size: 35, color: Colors.green.shade700),
                            ),
                            Marker(
                              rotate: true,
                              point: LatLng(51.218998, 51.372197),
                              builder: (context) => const Icon(Icons.location_on, size: 35, color: Colors.red),
                            ),
                        ],
                    ),
              ]);
}
