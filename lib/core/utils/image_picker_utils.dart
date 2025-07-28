import 'dart:io';

import 'package:image_picker/image_picker.dart';

abstract class Imagepickerutils {
  static Future<File?> pickImageFromGallery(
      {required ImageSource sorce}) async {
    final ImagePicker picker = ImagePicker();

    try {
      final XFile? image = await picker.pickImage(source: sorce);
      if (image != null) {
        return File(image.path);
      }
      return null; // User canceled the picker
    } catch (e) {
      return null;
    }
  }

  // static Future<List<File>> pickMultipleImagesFromGallery() async {
  //   final ImagePicker picker = ImagePicker();
  //   try {
  //     final List<XFile> images = await picker.pickMultiImage();
  //     if (images.isNotEmpty) {
  //       return images.map((xfile) => File(xfile.path)).toList();
  //     }
  //     return [];
  //   } catch (e) {
  //     return [];
  //   }
  // }
}


// add multipl image picker method here