import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';

class PaymentTermsConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:CustomAppBarlog(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              children: [
                Text(
                  'شروط وأحكام الدفع',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                _buildSectionTitle('1. مبلغ المعاينة:'),
                _buildSectionContent(
                  'يتم دفع مبلغ المعاينة المحدد عن طريق التحويل إلى حساب شركة "مزادكم"، ويتم تسجيله في محفظة المزايد. '
                  'المبلغ غير قابل للاسترداد حتى بعد إتمام إجراءات المزاد. '
                  'في حالة عدم المشاركة في المزاد، لا يتم استرداد المبلغ.',
                ),
                SizedBox(height: 10.0),
                _buildSectionTitle('2. مبلغ الضمان:'),
                _buildSectionContent(
                  'يقوم المزايد/المشتري بتحويل مبلغ الضمان المحدد بالإعلان إلى حساب "مزادكم"، ويتم تسجيله في المحفظة. '
                  'يتم استرداد مبلغ الضمان وفقًا للشروط الموضحة في المنصة.',
                ),
                SizedBox(height: 10.0),
                _buildSectionTitle('3. مبلغ المزاد:'),
                _buildSectionContent(
                  'يتوجب على الفائز بالمزاد دفع المبالغ الناتجة عن المزاد وفقًا لما هو محدد بالإعلان، بالإضافة إلى أي تكاليف أخرى ناتجة عن المزاد خلال الفترة المحددة، وذلك بناءً على تفاصيل الفاتورة.',
                ),
                SizedBox(height: 10.0),
                _buildSectionTitle('4. طرق الدفع:'),
                _buildSectionContent(
                  'جميع المبالغ المتعلقة بالمشاركة في المزاد الإلكتروني يتم دفعها كالتالي:',
                ),
                _buildBulletPoint('التحويل البنكي:'),
                _buildSubBulletPoint(
                  'حساب الشركة: "مزادكم" Smart Auction Solutions LLC',
                ),
                _buildSubBulletPoint('رقم الحساب: 0440061839220015'),
                _buildBulletPoint('الدفع عبر البطاقات الإلكترونية:'),
                _buildSubBulletPoint(
                  'يتم تطبيق رسوم عند طلب استرداد مبالغ الضمان في المحفظة:',
                ),
                _buildSubBulletPoint('خصم 1.5% للبطاقات المدينة.'),
                _buildSubBulletPoint('خصم 2% للبطاقات الائتمانية.'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: color2,
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        
        fontSize: 16.0),
        textAlign: TextAlign.right,
    );
  }

  Widget _buildBulletPoint(String content) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '- ',
          style: TextStyle(fontSize: 16.0),
        ),
        Expanded(
          child: Text(
            content,
            style: TextStyle(fontSize: 16.0),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }

  Widget _buildSubBulletPoint(String content) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(fontSize: 16.0),
          ),
          Expanded(
            child: Text(
              content,
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
