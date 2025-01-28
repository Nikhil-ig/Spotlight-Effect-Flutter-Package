
# Spotlight Effect Flutter Package

<div style="text-align: center; margin-top: 20px;">
  <strong>Preview:</strong><br>
  <img src="https://raw.githubusercontent.com/Saravanan260203/packagepreview/6fafcd033265b54c54439ae9ac7c0d7ee935c7af/video_20250112_131042.gif" alt="Package Preview" style="max-width: 100%; height: auto;">
</div>




## Overview

The Spotlight package provides a simple way to create spotlight effects in your Flutter applications. This package allows you to highlight specific areas of your UI, drawing attention to important elements.

## Features

Easy integration with existing Flutter applications.
Customizable spotlight effects.
Supports various child widgets.

## Installation

To use the Spotlight package, add it to your pubspec.yaml file:

```
dependencies:
  spotlight: ^1.0.0
```
Then, run the following command to install the package:
```
flutter pub get
```
Here’s a simple example of how to use the Spotlight package in your Flutter application:
```bash
import 'package:flutter/material.dart';
import 'package:spotlight/spotlight.dart';

void main() {
  runApp(const MyApp());
}
```
```bash
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spot Light Effect',
      home: Scaffold(
        body: SpotlightScreen(
          child: Image.network(
              "https://th.bing.com/th/id/OIG4.7h3EEAkofdcgjDEjeOyg",
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
```
# Explanation

SpotlightScreen: This widget wraps around the child widget you want to highlight.
Image.network: In this example, we are using a network image as the child widget.
Customization

You can customize the spotlight effect by modifying the properties of the SpotlightScreen widget. Refer to the package documentation for more details on available options.
<!-- 
# Contributing

Contributions are welcome! If you have suggestions or improvements, please create a pull request or open an issue. 
-->

<!-- # License -->
<!-- 
MIT License

Copyright (c) 2025 Nikhil-ig

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE. -->


<!-- # Contact

For any inquiries or support, please reach out to the package maintainer at [your-email@example.com]. 
