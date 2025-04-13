import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:path/path.dart' as path;


class FileUploadWidget extends StatefulWidget {
  final String title; // عنوان يظهر فوق زر اختيار الملف
  void Function(File) afterFinishingCallBack;
  FileUploadWidget({
    Key? key,
    required this.title, // إضافة عنوان ديناميكي
    required this.afterFinishingCallBack,
  }) : super(key: key);

  @override
  _FileUploadWidgetState createState() => _FileUploadWidgetState();
}

class _FileUploadWidgetState extends State<FileUploadWidget> {
  File? _file;

  // دالة لاختيار الملف
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
          // SizedBox(height: screenWidth * 0.03),
          Text(
            widget.title, // استخدام العنوان الديناميكي
            style: TextStyle(),
          ),
          SizedBox(height: screenWidth * 0.01), // مسافة بين العنوان والحاوية
          Container(
            width: double.infinity, // الحاوية تمتد تلقائيًا
            height: screenWidth * 0.2, // ارتفاع ديناميكي
            decoration: BoxDecoration(
              color: const Color.fromARGB(97, 158, 158, 158),
              borderRadius: BorderRadius.circular(screenWidth * 0.02),
            ),
            child: Row(
              children: [
                // أيقونة الصورة داخل حاوية

                InkWell(
                  onTap: _pickFile, // استدعاء دالة اختيار الملف
                  child: Container(
                    height: screenWidth * 0.1,
                    width: screenWidth * 0.25,
                    decoration: BoxDecoration(
                      color: color1, // لون الزر
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
                // عرض النص (اسم الملف أو رسالة عدم وجود ملف)
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
                            : path.basename(_file!.path), // عرض اسم الملف
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
                  width: screenWidth * 0.2, // عرض وارتفاع الأيقونة ديناميكي
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.01),
                    color: Colors.grey, // لون خلفية الأيقونة
                  ),
                  child: const Icon(
                    Icons.image,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                // زر اختيار الملف
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
