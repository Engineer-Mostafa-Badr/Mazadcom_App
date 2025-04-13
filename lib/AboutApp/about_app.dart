import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 13,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "من نحن؟",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color.fromARGB(16, 0, 0, 0),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "نحن متحمسون لإنشاء سوق ديناميكي حيث يجتمع المشترون والبائعون معًا لاكتشاف كنوز فريدة وإجراء المعاملات بثقة. مع سنوات من الخبرة في الصناعة، يلتزم فريقنا المتفاني بتوفير منصة سلسة وآمنة للمزادات بجميع أنواعها. سواء كنت جامعًا متمرسًا أو مقدم عرض لأول مرة، فإننا نسعى جاهدين لتقديم تجربة بديهية وسهلة الاستخدام. إن التزامنا بالشفافية والثقة ورضا العملاء هو ما يميزنا، مما يضمن أن يكون كل تفاعل معنا إيجابيًا ولا يُنسى. انضم إلينا اليوم وكن جزءًا من مجتمع المتحمسين النابض بالحياة، حيث تنتظرك إثارة العرض!",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 2,
                  width: 300,
                  color: Colors.grey,
                ),
              ],
            ),
          )),
    );
  }
}
