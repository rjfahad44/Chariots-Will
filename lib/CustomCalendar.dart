import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatefulWidget {
  final Function(DateTime dateTime) dateSelectCallBack;
  final Function(DateTime dateTime) monthSelectCallBack;

  CustomCalendar(
      {super.key,
      required this.dateSelectCallBack,
      required this.monthSelectCallBack});

  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  ScrollController _scrollController = ScrollController();
  int targetIndex = 0;
  String monthName = "";
  DateTime _selectedDate = DateTime.now();
  DateTime today = DateTime.now();
  List<DateTime> days = [];
  bool defaultSelectedDate = true;
  DateTime selectedMonth = DateTime.now();
  String? _dropDownSelectedMonth;
  List<String> _monthNames = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  List<DateTime> _getDaysInMonth(DateTime month) {
    final firstDay = DateTime(month.year, month.month, 1);
    final lastDay = DateTime(month.year, month.month + 1, 0);
    return List.generate(lastDay.difference(firstDay).inDays + 1,
        (index) => firstDay.add(Duration(days: index)));
  }

  void _updateDaysList(String? monthName) {
    if (monthName != null) {
      setState(() {
        _dropDownSelectedMonth = monthName;
        defaultSelectedDate = true;
        int monthIndex = _monthNames.indexOf(monthName) + 1;
        selectedMonth = DateTime(selectedMonth.year, monthIndex);
        widget.monthSelectCallBack.call(selectedMonth);
        days = _getDaysInMonth(selectedMonth);
      });
    }
  }

  double calculateOffset(List<DateTime> days, DateTime date) {
    final selectedIndex = days.indexOf(date);
    if (selectedIndex == -1) return 0.0;
    final itemWidth = 100.0;
    final scrollableWidth = MediaQuery.of(context).size.width;
    final offset =
        (selectedIndex * itemWidth) - (scrollableWidth / 2) + (itemWidth / 2);
    return offset.clamp(0.0, days.length * itemWidth - scrollableWidth);
  }

  @override
  void initState() {
    setState(() {
      today = DateTime.now();
      _selectedDate = DateTime.now();
      days = _getDaysInMonth(_selectedDate);
      monthName = DateFormat.yMMMM().format(_selectedDate);
      _dropDownSelectedMonth = DateFormat("MMMM").format(today);
      _scrollController = ScrollController(
          initialScrollOffset: calculateOffset(days, _selectedDate));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  monthName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  dropdownColor: Color(0xFF2E2E2E),
                  value: _dropDownSelectedMonth,
                  items: _monthNames
                      .map((item) => DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                      .toList(),
                  underline: SizedBox.shrink(),
                  onChanged: (String? month) {
                    setState(() {
                      _updateDaysList(month);
                      print('Selected item: $_dropDownSelectedMonth');
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 80.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: days.length,
            controller: _scrollController,
            itemBuilder: (context, index) {
              final date = days[index];
              bool isSelected = date.compareTo(_selectedDate) == 0;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedDate = date;
                    widget.dateSelectCallBack.call(_selectedDate);
                  });
                },
                child: Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:
                        isSelected ? Colors.blueAccent[100] : Color(0xFF2E2E2E),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        date.day.toString(),
                        style: TextStyle(
                          color:
                              date.day == today.day ? Colors.red : Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat('EEE').format(date),
                        style: TextStyle(
                          color:
                              date.day == today.day ? Colors.red : Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
