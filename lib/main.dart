import 'package:flutter/material.dart';
import 'package:mappls_gl/mappls_gl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapple Maps',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MapScreen(),
    );
  }
}

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapplsMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(28.6139, 77.2090),
          zoom: 14,
        ),
      ),
    );
  }
}
