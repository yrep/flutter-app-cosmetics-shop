import 'package:flutter/material.dart';

typedef OnChange<String> = void Function(String value);

class FilterItem extends StatefulWidget {
  final String label;
  final String initialValue;
  final List<String> values;
  final OnChange<String> onChanged;

  const FilterItem({
    super.key,
    required this.label,
    required this.initialValue,
    required this.values,
    required this.onChanged,
  });

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  late String currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
            height: 1.16,
            letterSpacing: 0.16,
          ),
        ),
        Expanded(
          child: _buildDropdown(
            value: currentValue,
            items: widget.values,
            onChanged: (newValue) {
              setState(() {
                currentValue = newValue!;
              });
              widget.onChanged(newValue!);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown({
    required String value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButton<String>(
          value: value,
          isExpanded: true,
          icon: SizedBox.shrink(),
          dropdownColor: Colors.white,
          elevation: 0,
          underline: SizedBox.shrink(),
          onChanged: onChanged,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    item,
                    style: TextStyle(
                      color: Colors.black.withAlpha(80),
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 1.16,
                      letterSpacing: 0.16,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
