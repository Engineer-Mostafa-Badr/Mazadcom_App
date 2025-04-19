import 'package:easy_localization/easy_localization.dart';
import '../../core/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? selectedAuctionType;
  String? selectedGroupName;
  String? selectedClientName;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildDropdown(
            selectedValue: selectedGroupName,
            hint: "Home.group_name".tr(),
            items: ["شرطة عمان السلطانية", "وزارة الصحة"],
            onChanged: (value) {
              setState(() {
                selectedGroupName = value;
              });
            },
          ),
          const SizedBox(width: 4),
          _buildDropdown(
            selectedValue: selectedClientName,
            hint: "Home.customer_name".tr(),
            items: ["العميل 1", "العميل الثاني"],
            onChanged: (value) {
              setState(() {
                selectedClientName = value;
              });
            },
          ),
          const SizedBox(width: 4),
          _buildDropdown(
            selectedValue: selectedAuctionType,
            hint: "Home.select_type".tr(),
            items: [
              "المباشرة",
              "المميز",
              "السابقة",
              "المنتهية",
              "القادمة",
              "النشطة"
            ],
            onChanged: (value) {
              setState(() {
                selectedAuctionType = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown({
    required String? selectedValue,
    required String hint,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return DropdownButtonHideUnderline(
      child: Container(
        height: 35,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: DropdownButton<String>(
          value: selectedValue,
          isExpanded: true,
          isDense: true,
          icon: const Icon(Icons.arrow_drop_down),
          iconEnabledColor: color2,
          onChanged: onChanged,
          items: [
            DropdownMenuItem(
              value: null,
              child: Center(
                child: Text(
                  hint,
                  style: TextStyle(
                    fontSize: 12,
                    color: color2,
                  ),
                  maxLines: 2,
                ),
              ),
            ),
            ...items.map(
              (item) => DropdownMenuItem(
                value: item,
                child: Center(
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
