import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'dart:io';

// ignore: must_be_immutable
class FileUploadWidget extends StatefulWidget {
  FileUploadWidget({
    super.key,
    required this.title,
    required this.afterFinishingCallBack,
  });
  final String title;
  void Function(File) afterFinishingCallBack;

  @override
  // ignore: library_private_types_in_public_api
  _FileUploadWidgetState createState() => _FileUploadWidgetState();
}

class _FileUploadWidgetState extends State<FileUploadWidget> {
  File? _file;

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _file = File(result.files.single.path!);
      });
    }
    if (_file != null) {
      widget.afterFinishingCallBack(_file!);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(),
          ),
          SizedBox(height: screenWidth * 0.01),
          Container(
            width: double.infinity,
            height: screenWidth * 0.2,
            decoration: BoxDecoration(
              color: const Color.fromARGB(97, 158, 158, 158),
              borderRadius: BorderRadius.circular(screenWidth * 0.02),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: _pickFile,
                  child: Container(
                    height: screenWidth * 0.1,
                    width: screenWidth * 0.25,
                    decoration: BoxDecoration(
                      color: color1,
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.upload,
                          color: Colors.white,
                          size: 16,
                        ),
                        SizedBox(width: screenWidth * 0.015),
                        Text(
                          "Authentication.select_file".tr(),
                          style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: screenWidth * 0.1,
                    margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        _file == null
                            ? "Authentication.no_file".tr()
                            : path.basename(_file!.path),
                        style: TextStyle(
                          fontSize: screenWidth * 0.03,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenWidth * 0.2,
                  width: screenWidth * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.01),
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    Icons.image,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          )
        ],
      ),
    );
  }
}
