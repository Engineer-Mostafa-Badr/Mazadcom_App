import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';

class PaymentTermss extends StatelessWidget {
  const PaymentTermss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.separated(
              itemCount: _terms.length,
              separatorBuilder: (context, index) => const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 30,
              ),
              itemBuilder: (context, index) {
                final term = _terms[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      term['title']!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      term['content']!,
                      style: const TextStyle(fontSize: 16, color: Colors.black54),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> _terms = [
  {
    'title': '1. التعريفات:',
    'content':
        '- "مزادكم" أو "الموقع" أو "نحن": تشير إلى منصة "مزادكم" الإلكترونية.\n'
        '- "المستخدم": الشخص الذي يستخدم المنصة سواء للتسجيل أو المزايدة أو الشراء.\n'
        '- "المزايد/المشتري": الشخص الذي يكمل إجراءات المزايدة أو شراء المواد المعروضة.\n'
        '- "القوانين والتشريعات": القوانين السارية في سلطنة عمان.\n'
        '- "الأجهزة الذكية": الحواسيب، الهواتف المحمولة، الأجهزة اللوحية، أو أي جهاز مشابه للوصول للمنصة.',
  },
  {
    'title': '2. الاشتراك والتسجيل:',
    'content':
        '- يجب على المستخدم توفير معلومات دقيقة ومحدثة عند التسجيل.\n'
        '- يحصل المستخدم عند التسجيل على اسم مستخدم وكلمة مرور لاستخدامها في الدخول للمنصة.',
  },
  {
    'title': '3. الأهلية:',
    'content':
        '- يجب أن يكون المستخدم قد بلغ السن القانونية (18 سنة)، وأن يتمتع بالأهلية القانونية الكاملة.',
  },
  {
    'title': '4. سياسة الخصوصية:',
    'content':
        '- تلتزم المنصة بحماية بيانات المستخدم وعدم استخدامها إلا في إطار المنصة أو بموافقة المستخدم.\n'
        '- يتم الاحتفاظ ببيانات المستخدم بشكل آمن ولن يتم الكشف عنها إلا إذا استلزم القانون ذلك.',
  },
  {
    'title': '5. الملكية الفكرية:',
    'content':
        '- جميع محتويات الموقع ملك لمنصة "مزادكم" ومحمية بموجب قوانين حقوق الملكية الفكرية.',
  },
  {
    'title': '6. الإجراءات عند مخالفة الشروط:',
    'content':
        '- أي مخالفة للقوانين المطبقة على المنصة تعرض المستخدم للمساءلة القانونية.\n'
        '- يتم إغلاق حساب المستخدم المخالف ومنعه من الوصول للمنصة.',
  },
  {
    'title': '7. القوة القاهرة:',
    'content':
        '- في حال وجود ظروف خارجة عن السيطرة (مثل الكوارث الطبيعية، الحروب)، قد يتم تعليق الخدمات مؤقتًا.',
  },
  {
    'title': '8. الشروط العامة:',
    'content':
        '- استخدام المنصة يعتبر موافقة كاملة وغير مشروطة على هذه الشروط.\n'
        '- أي نزاع ينشأ عن استخدام المنصة يخضع لاختصاص المحاكم في سلطنة عمان.',
  },
];
