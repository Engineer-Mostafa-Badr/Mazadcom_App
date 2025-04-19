import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BiddingScreen extends StatefulWidget {
  const BiddingScreen({super.key});

  @override
  State<BiddingScreen> createState() => _BiddingScreenState();
}

class _BiddingScreenState extends State<BiddingScreen> {
  double totalCurrentValue = 1000.00;

  int? selectedValue;

  int? incrementValue;
  double totalIncremntValue = 0;
  int? selectedValueIncrement;

  bool isAutoBiddingEnabled = false;
  double totalCurrentValuBiddingNow = 1000.00;
  int? selectedValueBiddingNow;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          if (!isAutoBiddingEnabled) ...[
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                "Wallet.start_bidding_now".tr(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 4),
            Row(
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      totalCurrentValue -= selectedValue ?? 1;
                      if (totalCurrentValue < 0) totalCurrentValue = 0;
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
                        "$totalCurrentValue",
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
                      totalCurrentValue += selectedValue ?? 1;
                    });
                  },
                  icon: const Icon(Icons.add_circle, color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
                Text('Authentication.accept_terms'.tr()),
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
          SwitchListTile(
            title: Text(
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
          if (isAutoBiddingEnabled)
            Column(
              children: [
                Text(
                  "Wallet.target_amount".tr(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  width: 180,
                  height: 33,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: color2),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "000",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Wallet.amount_increase".tr(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
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
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          totalCurrentValue -= selectedValue ?? 1;
                          if (totalCurrentValue < 0) totalCurrentValue = 0;
                        });
                      },
                      icon: Icon(Icons.remove_circle, color: Colors.red),
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
                            "$totalCurrentValue",
                            style: TextStyle(
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
                          totalCurrentValue += selectedValue ?? 1;
                        });
                      },
                      icon: const Icon(Icons.add_circle, color: Colors.green),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: color2),
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }

  List<Widget> _buildCardList() {
    List<int> values = [2000, 1000, 100, 200, 10, 50, 1, 5];
    return values.map((value) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedValue = value;
            totalCurrentValue += value;
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
