import 'package:flutter/material.dart';
class TabItemMyAuctions extends StatelessWidget {
  final String title;
  final int count;

  const TabItemMyAuctions({
    super.key,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          count > 0
              ? Container(
                  margin: const EdgeInsetsDirectional.only(end: 3),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        count > 9 ? "9+" : count.toString(),
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
               Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 9),
          ),
        ],
      ),
    );
  }
}
