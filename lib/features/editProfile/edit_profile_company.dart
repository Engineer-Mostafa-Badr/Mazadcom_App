import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:io';

class EditProfileCompany extends StatefulWidget {
  const EditProfileCompany({super.key});
  @override
  State<EditProfileCompany> createState() => _EditProfileCompanyState();
}

class _EditProfileCompanyState extends State<EditProfileCompany> {
  final TextEditingController nameEditCompanyController =
      TextEditingController();
  final TextEditingController usernameEditCompanyController =
      TextEditingController();
  final TextEditingController emailEditCompanyController =
      TextEditingController();
  final TextEditingController phoneNumberEditCompanyController =
      TextEditingController();
  final TextEditingController passwordEditCompanyController =
      TextEditingController();
  final TextEditingController idNumberEditCompanyController =
      TextEditingController();
  final TextEditingController bankNameEditCompanyController =
      TextEditingController();
  final TextEditingController bankNumberEditCompanyController =
      TextEditingController();
  final TextEditingController
      commercialRegistrationNumberEditCompanyController =
      TextEditingController();
  final TextEditingController taxCertificateEditCompanyController =
      TextEditingController();
  final TextEditingController authorizedNameEditCompanyController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        editProfileCompanyTextField(
            label: 'الإسم',
            editcompanyprofilecontroller: nameEditCompanyController),
        editProfileCompanyTextField(
            label: 'اسم المستخدم',
            editcompanyprofilecontroller: usernameEditCompanyController),
        editProfileCompanyTextField(
            label: 'البريد الإلكتروني',
            editcompanyprofilecontroller: emailEditCompanyController),
        editProfileCompanyTextField(
            label: 'رقم الهاتف',
            editcompanyprofilecontroller: phoneNumberEditCompanyController),
        editProfileCompanyTextField(
            label: 'كلمة المرور',
            editcompanyprofilecontroller: passwordEditCompanyController),
        editProfileCompanyTextField(
            label: 'رقم البطاقة الشخصية/بطاقة مقيم',
            editcompanyprofilecontroller: idNumberEditCompanyController),
        editProfileCompanyTextField(
            label: 'اسم البنك',
            editcompanyprofilecontroller: bankNameEditCompanyController),
        editProfileCompanyTextField(
            label: 'رقم الحساب البنكي',
            editcompanyprofilecontroller: bankNumberEditCompanyController),
        editProfileCompanyTextField(
            label: 'رقم السجل التجاري',
            editcompanyprofilecontroller:
                commercialRegistrationNumberEditCompanyController),
        editProfileCompanyTextField(
            label: 'شهادة الضريبة',
            editcompanyprofilecontroller: taxCertificateEditCompanyController),
        editProfileCompanyTextField(
            label: 'اسم المخول الثلاثي',
            editcompanyprofilecontroller: authorizedNameEditCompanyController),
        EditUploadWidget(
          title: 'التوقيع',
        ),
        EditUploadWidget(
          title: 'إرفاق رقم البطاقة الشخصية',
        ),
        Center(child: EditUploadWidget(title: 'رسالة من المخول')),
        Center(child: EditUploadWidget(title: 'إرفاق السجل التجاري')),
        Center(child: EditUploadWidget(title: 'إرفاق شهادة الضريبة')),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: color2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text("تقديم"),
        ),
      ],
    );
  }
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

Widget editProfileCompanyTextField({
  required String label,
  required TextEditingController editcompanyprofilecontroller,
}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: SizedBox(
              height: 38,
              width: 336,
              child: TextFormField(
                controller: editcompanyprofilecontroller,
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
    ),
  );
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
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 2),
            Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                color: Color.fromARGB(26, 158, 158, 158),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: color2,
                        ),
                        child: Icon(
                          Icons.image,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 120,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            _file == null
                                ? "لا يوجد ملف مختار..."
                                : path.basename(_file!.path),
                            style: TextStyle(
                              fontSize: 9,
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
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: SvgPicture.asset(
                                  "assetss/update.svg",
                                  width: 15,
                                  height: 15,
                                ),
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
