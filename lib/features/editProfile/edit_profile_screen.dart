import 'package:flutter/material.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';

import 'package:mzadcom/features/editProfile/edit_profile_company.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isCompanySelected = true;
  final TextEditingController nameEditIndividualController =
      TextEditingController();
  final TextEditingController usernameEditIndividualController =
      TextEditingController();
  final TextEditingController emailEditIndividualController =
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
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    width: 366,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(37, 158, 158, 158),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          width: 366,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: color2,
                          ),
                          child: Center(
                              child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "تعديل الملف الشخصي",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 2),
                              Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          )),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 163,
                              height: 36,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: isCompanySelected
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundColor:
                                      isCompanySelected ? color1 : Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: color1),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isCompanySelected = true;
                                  });
                                },
                                child: Text('شركة'),
                              ),
                            ),
                            SizedBox(width: 8.0),
                            SizedBox(
                              width: 163,
                              height: 36,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: !isCompanySelected
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundColor: !isCompanySelected
                                      ? color1
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: color1),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isCompanySelected = false;
                                  });
                                },
                                child: Text('فرد'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        if (isCompanySelected) ...[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                editProfileCompanyTextField(
                                    label: 'الاسم',
                                    editcompanyprofilecontroller:
                                        nameEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'اسم المستخدم',
                                    editcompanyprofilecontroller:
                                        usernameEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'البريد الإلكتروني',
                                    editcompanyprofilecontroller:
                                        emailEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'رقم الهاتف',
                                    editcompanyprofilecontroller:
                                        phoneNumberEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'كلمة المرور',
                                    editcompanyprofilecontroller:
                                        passwordEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'رقم البطاقة الشخصية/بطاقة مقيم',
                                    editcompanyprofilecontroller:
                                        idNumberEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'اسم البنك',
                                    editcompanyprofilecontroller:
                                        bankNameEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'رقم الحساب البنكي',
                                    editcompanyprofilecontroller:
                                        bankNumberEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'رقم السجل التجاري',
                                    editcompanyprofilecontroller:
                                        commercialRegistrationNumberEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'شهادة الضريبة',
                                    editcompanyprofilecontroller:
                                        taxCertificateEditCompanyController),
                                editProfileCompanyTextField(
                                    label: 'اسم المخول الثلاثي',
                                    editcompanyprofilecontroller:
                                        authorizedNameEditCompanyController),
                                EditUploadWidget(
                                  title: 'التوقيع',
                                ),
                                EditUploadWidget(
                                  title: 'إرفاق رقم البطاقة الشخصية',
                                ),
                                EditUploadWidget(title: 'رسالة من المخول'),
                                EditUploadWidget(title: 'إرفاق السجل التجاري'),
                                EditUploadWidget(title: 'إرفاق شهادة الضريبة'),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 140,
                                  height: 36,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: color1,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: BorderSide(color: color1),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    child: Text('تقديم'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ] else ...[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                editProfileIndividualTextField(
                                  label: 'الاسم',
                                  editindividualprofilecontroller:
                                      nameEditIndividualController,
                                ),
                                editProfileIndividualTextField(
                                  label: 'اسم المستخدم',
                                  editindividualprofilecontroller:
                                      usernameEditIndividualController,
                                ),
                                editProfileIndividualTextField(
                                  label: 'البريد الإلكتروني',
                                  editindividualprofilecontroller:
                                      emailEditIndividualController,
                                ),
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
                                EditUploadWidget(
                                    title: 'إرفاق رقم البطاقة الشخصية'),
                                EditUploadWidget(title: 'رسالة من المخول'),
                                EditUploadWidget(title: 'إرفاق السجل التجاري'),
                                EditUploadWidget(
                                    title: 'إرفاق الشهادة الضريبية'),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 140,
                                  height: 36,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: color1,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: BorderSide(color: color1),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    child: Text('تقديم'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
