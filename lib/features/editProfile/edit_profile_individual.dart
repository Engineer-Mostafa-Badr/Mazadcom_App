import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;
import 'package:flutter/material.dart';
import 'dart:io';

class EditProfileIndividual extends StatefulWidget {
  const EditProfileIndividual({super.key});
  @override
  State<EditProfileIndividual> createState() => _EditProfileIndividualState();
}

class _EditProfileIndividualState extends State<EditProfileIndividual> {
  final TextEditingController nameEditIndividualController =
      TextEditingController();
  final TextEditingController usernameEditIndividualController =
      TextEditingController();
  final TextEditingController emailEditIndividualController =
      TextEditingController();
  final TextEditingController phoneNumberEditIndividualController =
      TextEditingController();
  final TextEditingController passwordEditIndividualController =
      TextEditingController();
  final TextEditingController idNumberEditIndividualController =
      TextEditingController();
  final TextEditingController bankNameEditIndividualController =
      TextEditingController();
  final TextEditingController bankNumberEditIndividualController =
      TextEditingController();
  final TextEditingController
      commercialRegistrationNumberEditIndividualController =
      TextEditingController();
  final TextEditingController taxCertificateEditIndividualController =
      TextEditingController();
  final TextEditingController authorizedNameEditIndividualController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            editProfileIndividualTextField(
              editindividualprofilecontroller: nameEditIndividualController,
              label: 'الإسم',
            ),
            editProfileIndividualTextField(
                label: 'اسم المستخدم',
                editindividualprofilecontroller:
                    usernameEditIndividualController),
            editProfileIndividualTextField(
                label: 'البريد الإلكتروني',
                editindividualprofilecontroller: emailEditIndividualController),
            editProfileIndividualTextField(
                label: 'رقم الهاتف',
                editindividualprofilecontroller:
                    phoneNumberEditIndividualController),
            editProfileIndividualTextField(
                label: 'كلمة المرور',
                editindividualprofilecontroller:
                    passwordEditIndividualController),
            editProfileIndividualTextField(
                label: 'رقم البطاقة الشخصية/بطاقة مقيم',
                editindividualprofilecontroller:
                    idNumberEditIndividualController),
            editProfileIndividualTextField(
                label: 'اسم البنك',
                editindividualprofilecontroller:
                    bankNameEditIndividualController),
            editProfileIndividualTextField(
                label: 'رقم الحساب البنكي',
                editindividualprofilecontroller:
                    bankNumberEditIndividualController),
            editProfileIndividualTextField(
                label: 'رقم السجل التجاري',
                editindividualprofilecontroller:
                    commercialRegistrationNumberEditIndividualController),
            editProfileIndividualTextField(
                label: 'شهادة الضريبة',
                editindividualprofilecontroller:
                    taxCertificateEditIndividualController),
            editProfileIndividualTextField(
                label: 'اسم المخول الثلاثي',
                editindividualprofilecontroller:
                    authorizedNameEditIndividualController),
            EditUploadWidget(title: 'التوقيع'),
            EditUploadWidget(title: 'إرفاق رقم البطاقة الشخصية'),
            EditUploadWidget(title: 'رسالة من المخول'),
            EditUploadWidget(title: 'إرفاق السجل التجاري'),
            EditUploadWidget(title: 'إرفاق الشهادة الضريبية'),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: color1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("تقديم"),
            ),
          ],
        ),
      ),
    ));
  }

  Widget editProfileIndividualTextField({
    required String label,
    required TextEditingController editindividualprofilecontroller,
  }) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              label,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Container(
              constraints: BoxConstraints(),
              child: TextFormField(
                controller: editindividualprofilecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(97, 158, 158, 158),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EditUploadWidget extends StatefulWidget {
  final String title;
  const EditUploadWidget({
    super.key,
    required this.title,
  });

  @override
  // ignore: library_private_types_in_public_api
  _EditUploadWidgetState createState() => _EditUploadWidgetState();
}

class _EditUploadWidgetState extends State<EditUploadWidget> {
  File? _file;

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _file = File(result.files.single.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 333,
              height: 80,
              decoration: BoxDecoration(
                color: Color.fromARGB(97, 158, 158, 158),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 98,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: color2,
                        ),
                        child: Icon(
                          Icons.image,
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 33,
                        width: 129,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            _file == null
                                ? "لا يوجد ملف مختار..."
                                : path.basename(_file!.path),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: _pickFile,
                        child: Container(
                          height: 33,
                          width: 95,
                          color: color1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.upload,
                                color: Colors.white,
                              ),
                              Text(
                                "اختر الملف",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
