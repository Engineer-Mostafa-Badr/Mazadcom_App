import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class BiddingScreen extends StatefulWidget {
  const BiddingScreen({super.key});

  @override
  State<BiddingScreen> createState() => _BiddingScreenState();
}

class _BiddingScreenState extends State<BiddingScreen> {
  // المتغير الذي يحفظ القيمة الإجمالية
  double totalCurrentValue = 1000.00;
  // المتغير الذي يحفظ قيمة البطاقة المختارة
  int? selectedValue;

  // المتغير الذي يحفظ قيمة الزيادة
  int? incrementValue;
  double totalIncremntValue = 0;
  int? selectedValueIncrement;

  // المتغير الذي يتحكم في تفعيل أو إلغاء تفعيل المزايدة التلقائية
  bool isAutoBiddingEnabled = false;
  double totalCurrentValuBiddingNow = 1000.00;
  int? selectedValueBiddingNow;

  // متغير لحفظ حالة التشيك بوكس
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          // إظهار هذه الأجزاء فقط عند تعطيل المزايدة التلقائية
          if (!isAutoBiddingEnabled) ...[
            Container(
              padding: const EdgeInsets.only(right: 20),
              child:  Text(
                "Wallet.start_bidding_now".tr(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 4),
            Container(
              child: Row(
                children: [
                  const Icon(Icons.keyboard_arrow_left),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                      ),
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: _buildCardList(),
                      ),
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      totalCurrentValue -= selectedValue ?? 1;
                      if (totalCurrentValue < 0)
                        totalCurrentValue =
                            0; // عدم السماح بأن تكون القيمة أقل من 0
                    });
                  },
                  icon: const Icon(Icons.remove_circle, color: Colors.red),
                ),
                Container(
                  width: 180,
                  height: 33,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: color2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Wallet.omr".tr()),
                      Text(
                        "$totalCurrentValue", // عرض القيمة الحالية
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      totalCurrentValue +=
                          selectedValue ?? 1; // زيادة المبلغ بالقيمة المختارة
                    });
                  },
                  icon: const Icon(Icons.add_circle, color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // للمحاذاة في الوسط
              children: [
                Checkbox(
                  value: isChecked, // ربط التشيك بوكس بالحالة
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false; // تغيير الحالة عند النقر
                    });
                  },
                ),
                 Text('Authentication.accept_terms'.tr()), // نص
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: color2,
                  ),
                ),
              ),
              child: Text(
                'Authentication.loginb5'.tr(),
                style: TextStyle(fontWeight: FontWeight.bold, color: color2),
              ),
            )
          ],

          // SwitchListTile للتحكم في تفعيل المزايدة التلقائية
          SwitchListTile(
            title:  Text(
              "Auctions.automatic_bidding".tr(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: isAutoBiddingEnabled,
            onChanged: (bool value) {
              setState(() {
                isAutoBiddingEnabled = value;
              });
            },
            activeColor: Colors.green,
          ),

          // عرض باقي المحتوى بناءً على تفعيل المزايدة التلقائية
          if (isAutoBiddingEnabled)
            Column(
              children: [
                Container(
                  child:  Text(
                    "Wallet.target_amount".tr(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  width: 180,
                  height: 33,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: color2),
                  ),
                  child:  TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "000",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  child:  Text(
                   "Wallet.amount_increase".tr(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      const Icon(Icons.keyboard_arrow_left),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                          ),
                          height: 42,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: _buildCardList(),
                          ),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
                 SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          totalCurrentValue -= selectedValue ?? 1;
                          if (totalCurrentValue < 0)
                            totalCurrentValue =
                                0; // عدم السماح بأن تكون القيمة أقل من 0
                        });
                      },
                      icon:  Icon(Icons.remove_circle, color: Colors.red),
                    ),
                    Container(
                      width: 180,
                      height: 33,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: color2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text("Wallet.omr".tr()),
                          Text(
                            "$totalCurrentValue", // عرض القيمة الحالية
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          totalCurrentValue += selectedValue ??
                              1; // زيادة المبلغ بالقيمة المختارة
                        });
                      },
                      icon: const Icon(Icons.add_circle, color: Colors.green),
                    ),
                  ],
                ),
                // const SizedBox(height: 5),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // للمحاذاة في الوسط
                  children: <Widget>[
                    Checkbox(
                      value: isChecked, // ربط التشيك بوكس بالحالة
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked =
                              value ?? false; // تغيير الحالة عند النقر
                        });
                      },
                    ),
                   
                     Text("Authentication.accept_terms".tr()), 
                  ],
                ),
                 ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: color2,
                  ),
                ),
              ),
              child: Text(
                'Authentication.loginb5'.tr(),
                style: TextStyle(fontWeight: FontWeight.bold, color: color2),
              ),
            )
              ],
            ),
        ],
      ),
    );
  }

  // دالة لإنشاء البطاقات
  List<Widget> _buildCardList() {
    List<int> values = [2000, 1000, 100, 200, 10, 50, 1, 5];
    return values.map((value) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedValue = value; // تحديد القيمة المختارة
            totalCurrentValue +=
                value; // زيادة القيمة الحالية بالبطاقة المختارة
          });
        },
        child: Card(
          color: selectedValue == value
              ? color2
              : const Color.fromARGB(21, 220, 225, 229),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$value",
              style: TextStyle(
                color: selectedValue == value ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }
}
