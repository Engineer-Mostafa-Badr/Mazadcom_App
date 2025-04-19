import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String? selectedGroupName;
  String? selectedOption;
  bool isFilterVisible = false;
  DateTime? date1;
  DateTime? date2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSearchBar(),
        const SizedBox(height: 10),
        if (isFilterVisible) _buildFilterContainer(),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(7),
                bottomLeft: Radius.circular(7),
              ),
              color: color2,
            ),
            height: 38,
            width: 40,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isFilterVisible = !isFilterVisible;
                });
              },
              icon: const Icon(
                Icons.filter_alt_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 38,
            width: 310,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(7),
                bottomRight: Radius.circular(7),
              ),
              color: Colors.black12,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromARGB(176, 158, 158, 158),
                    ),
                    hintText: "ابحث عن المزاد",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 182, 180, 180),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterContainer() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(45, 158, 158, 158),
        borderRadius: BorderRadius.circular(7),
      ),
      height: 40,
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              "assetss/map.svg",
              width: 18,
              height: 18,
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: _buildFilterButton(
              label: "الفرز حسب التاريخ",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('اختر تاريخين'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.calendar_today),
                            title: Text(
                              date1 == null
                                  ? 'من التاريخ'
                                  : 'من التاريخ: ${date1!.toLocal()}'
                                      .split(' ')[0],
                            ),
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: date1 ?? DateTime.now(),
                                firstDate: DateTime(2018),
                                lastDate: DateTime(2030),
                              );
                              if (pickedDate != null) {
                                setState(() {
                                  date1 = pickedDate;
                                });
                              }
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.calendar_today),
                            title: Text(
                              date2 == null
                                  ? 'إلى التاريخ'
                                  : 'إلى التاريخ: ${date2!.toLocal()}'
                                      .split(' ')[0],
                            ),
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: date2 ?? DateTime.now(),
                                firstDate: DateTime(2018),
                                lastDate: DateTime(2030),
                              );
                              if (pickedDate != null) {
                                setState(() {
                                  date2 = pickedDate;
                                });
                              }
                            },
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('إغلاق'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: _buildFilterButton(
              label: "الفرز حسب السعر",
              onPressed: () {
                _showPriceSortMenu(context);
              },
            ),
          ),
          const SizedBox(width: 5),
          Expanded(child: _buildCategoryFilter()),
        ],
      ),
    );
  }

  Widget _buildFilterButton({
    required String label,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: EdgeInsets.zero,
        minimumSize: const Size(100, 30),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 2),
          SvgPicture.asset(
            "assetss/arrowupdown.svg",
            height: 10,
            width: 10,
          ),
        ],
      ),
    );
  }

  void _showPriceSortMenu(BuildContext context) {
    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(100, 150, 100, 0),
      items: [
        PopupMenuItem<String>(
          value: "desc",
          child: const Text(
            "من الأعلى للأقل",
            style: TextStyle(fontSize: 12),
          ),
        ),
        PopupMenuItem<String>(
          value: "asc",
          child: const Text(
            "من الأقل للأعلى",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    ).then((value) {
      if (value != null) {
        setState(() {
          selectedOption =
              value == "desc" ? "من الأعلى للأقل" : "من الأقل للأعلى";
        });
      }
    });
  }

  Widget _buildCategoryFilter() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.grey),
      ),
      child: DropdownButton<String>(
        value: selectedGroupName,
        isExpanded: true,
        hint: const Text(
          "اختر فئة",
          style: TextStyle(color: Colors.grey),
        ),
        onChanged: (String? value) {
          setState(() {
            selectedGroupName = value;
          });
        },
        items: [
          "عقارات",
          "صفقات كبيرة",
          "خردة الحديد",
          "تحف",
          "المواد الفائضة",
          "خردة متنوعة",
          "كيبلات نحاس",
          "مركبات"
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 12),
            ),
          );
        }).toList(),
      ),
    );
  }
}
