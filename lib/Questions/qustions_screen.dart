import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mzadcom/Auctions/MyBids/search.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';

class FAQScreen extends StatefulWidget {
  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  int selectedButtonIndex = 0;
  // final TextEditingController _controller = TextEditingController();

  List<Map<String, String>> currentFaqs = [];

  final List<Map<String, String>> financialfaqs = [
    {
      'question': 'ما هي سياسة الاسترجاع؟',
      'answer':
          'يمكنك استرجاع المنتج خلال 30 يومًا من تاريخ الشراء بشرط أن يكون بحالته الأصلية.'
    },
    {
      'question': 'ما هي طرق الدفع المتاحة؟',
      'answer':
          'نقبل الدفع عبر البطاقات الائتمانية، البطاقات البنكية، والمحافظ الإلكترونية.'
    },
    {
      'question': 'ما هي سياسة الاسترجاع؟',
      'answer':
          'يمكنك استرجاع المنتج خلال 30 يومًا من تاريخ الشراء بشرط أن يكون بحالته الأصلية.'
    },
    {
      'question': 'ما هي طرق الدفع المتاحة؟',
      'answer':
          'نقبل الدفع عبر البطاقات الائتمانية، البطاقات البنكية، والمحافظ الإلكترونية.'
    },
    {
      'question': 'ما هي سياسة الاسترجاع؟',
      'answer':
          'يمكنك استرجاع المنتج خلال 30 يومًا من تاريخ الشراء بشرط أن يكون بحالته الأصلية.'
    },
    {
      'question': 'ما هي طرق الدفع المتاحة؟',
      'answer':
          'نقبل الدفع عبر البطاقات الائتمانية، البطاقات البنكية، والمحافظ الإلكترونية.'
    },
    {
      'question': 'ما هي سياسة الاسترجاع؟',
      'answer':
          'يمكنك استرجاع المنتج خلال 30 يومًا من تاريخ الشراء بشرط أن يكون بحالته الأصلية.'
    },
    {
      'question': 'ما هي طرق الدفع المتاحة؟',
      'answer':
          'نقبل الدفع عبر البطاقات الائتمانية، البطاقات البنكية، والمحافظ الإلكترونية.'
    },
  ];

  final List<Map<String, String>> technicalfaqs = [
    {
      'question': 'كيف يمكنني تحديث التطبيق؟',
      'answer': 'يمكنك تحديث التطبيق من خلال متجر التطبيقات الخاص بجهازك.'
    },
    {
      'question': 'ماذا أفعل إذا واجهت مشكلة تقنية؟',
      'answer': 'يرجى التواصل مع الدعم الفني عبر صفحة "الدعم".'
    },
    {
      'question': 'كيف يمكنني تحديث التطبيق؟',
      'answer': 'يمكنك تحديث التطبيق من خلال متجر التطبيقات الخاص بجهازك.'
    },
    {
      'question': 'ماذا أفعل إذا واجهت مشكلة تقنية؟',
      'answer': 'يرجى التواصل مع الدعم الفني عبر صفحة "الدعم".'
    },
    {
      'question': 'كيف يمكنني تحديث التطبيق؟',
      'answer': 'يمكنك تحديث التطبيق من خلال متجر التطبيقات الخاص بجهازك.'
    },
    {
      'question': 'ماذا أفعل إذا واجهت مشكلة تقنية؟',
      'answer': 'يرجى التواصل مع الدعم الفني عبر صفحة "الدعم".'
    },
  ];

  final List<Map<String, String>> auctionsfaqs = [
    {
      'question': 'كيف يمكنني المشاركة في المزادات؟',
      'answer':
          'يمكنك المشاركة من خلال التسجيل في التطبيق والتوجه إلى قسم المزادات.'
    },
    {
      'question': 'ما هي شروط المشاركة في المزادات؟',
      'answer': 'يجب أن تكون مسجلاً وموافقتك على الشروط والأحكام.'
    },
    {
      'question': ' كيف يمكنني تسجيل الدخول عند نسيان كلمة المرور؟',
      'answer': 'من خلال استخدام رمز التحقق ( OTP) .'
    },
    {
      'question': ' من أين يمكنني أن أرى معلومات تفصيلية عن المزاد؟',
      'answer': 'من خلال الضغط على معلومات تفصيلية الموجودة في صفحة المزاد'
    },
  ];

  @override
  void initState() {
    super.initState();
    currentFaqs = financialfaqs; // عرض الأسئلة المالية بشكل افتراضي
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: color2),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Row(
                  spacing: 3,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "أسئلة متكررة",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.question_answer,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Search(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedButtonIndex == 0 ? color2 : Colors.white,
                    foregroundColor:
                        selectedButtonIndex == 0 ? Colors.white : color1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(
                        color: color1, // لون الحواف
                        width: 1.0,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 0;
                      currentFaqs = financialfaqs;
                    });
                  },
                  child: Text("المالية"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedButtonIndex == 1 ? color2 : Colors.white,
                    foregroundColor:
                        selectedButtonIndex == 1 ? Colors.white : color1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(
                        color: color1,
                        width: 1.0,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 1;
                      currentFaqs = technicalfaqs;
                    });
                  },
                  child: Text("التقنية"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedButtonIndex == 2 ? color2 : Colors.white,
                    foregroundColor:
                        selectedButtonIndex == 2 ? Colors.white : color1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(
                        color: color1,
                        width: 1.0,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 2;
                      currentFaqs = auctionsfaqs;
                    });
                  },
                  child: Text("القانونية"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedButtonIndex == 3 ? color2 : Colors.white,
                    foregroundColor:
                        selectedButtonIndex == 3 ? Colors.white : color1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(
                        color: color1,
                        width: 1.0,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 3;
                      currentFaqs = auctionsfaqs;
                    });
                  },
                  child: Text("المزادات"),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.builder(
                    itemCount: currentFaqs.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 380,
                        margin:
                            EdgeInsets.symmetric(vertical: 5.0, horizontal: 6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.2),
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            dividerColor: Colors.transparent,
                          ),
                          child: ExpansionTile(
                            iconColor: color2,
                            collapsedIconColor: color2,
                            tilePadding: EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              currentFaqs[index]['question']!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: color2,
                              ),
                            ),
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: 0.3),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    currentFaqs[index]['answer']!,
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: color2,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AskQuestionDialog(),
                  );
                },
                child: Text("اسألني"))
          ],
        ),
      ),
    );
  }
}

class AskQuestionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        clipBehavior: Clip
            .none, // To allow the icon to be partially outside the container
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 30),
                // حقل إدخال السؤال
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color.fromARGB(70, 158, 158, 158),
                    ),
                    child: TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'ضع سؤالك هنا ....',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // زر الإرسال
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // إغلاق النافذة
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'إرسال',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // صورة الأيقونة العلوية
          Positioned(
            top: -30, // Move the icon upwards
            left: MediaQuery.of(context).size.width * 0.5 -
                70, // Center horizontally
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "assets/person.svg",
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
