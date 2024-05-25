import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatefulWidget {
  final Function(DateTime dateTime) dateSelectCallBack;
  final Function(DateTime dateTime) monthSelectCallBack;

  CustomCalendar({
    Key? key,
    required this.dateSelectCallBack,
    required this.monthSelectCallBack,
  }) : super(key: key);

  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  late ScrollController _scrollController;
  DateTime _selectedDate = DateTime.now();
  DateTime today = DateTime.now();
  List<DateTime> days = [];
  DateTime selectedMonth = DateTime.now();
  String? _dropDownSelectedMonth;
  final List<String> _monthNames = [
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

  @override
  void initState() {
    super.initState();
    today = DateTime.now();
    _selectedDate = DateTime(today.year, today.month, today.day);
    selectedMonth = DateTime(today.year, today.month);
    _dropDownSelectedMonth = DateFormat('MMMM').format(today);
    days = _getDaysInMonth(selectedMonth);
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _centerSelectedDate();
    });
  }

  List<DateTime> _getDaysInMonth(DateTime month) {
    final firstDay = DateTime(month.year, month.month, 1);
    final lastDay = DateTime(month.year, month.month + 1, 0);
    return List.generate(
      lastDay.difference(firstDay).inDays + 1,
          (index) => firstDay.add(Duration(days: index)),
    );
  }

  void _updateDaysList(String? monthName) {
    if (monthName != null) {
      setState(() {
        _dropDownSelectedMonth = monthName;
        int monthIndex = _monthNames.indexOf(monthName) + 1;
        selectedMonth = DateTime(selectedMonth.year, monthIndex);
        widget.monthSelectCallBack.call(selectedMonth);
        days = _getDaysInMonth(selectedMonth);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _centerSelectedDate();
        });
      });
    }
  }

  void _centerSelectedDate() {
    if (_scrollController.hasClients) {
      final itemWidth = 90.0;
      final screenWidth = MediaQuery.of(context).size.width;
      final selectedIndex = days.indexOf(_selectedDate);
      if (selectedIndex != -1) {
        final offset = (selectedIndex * itemWidth) - (screenWidth / 2) + (itemWidth / 2);
        //_scrollController.jumpTo(offset.clamp(0.0, _scrollController.position.maxScrollExtent));
        _scrollController.animateTo(
          offset.clamp(0.0, _scrollController.position.maxScrollExtent),
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOutCubic,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String monthName = DateFormat.yMMMM().format(selectedMonth);
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
                    fontWeight: FontWeight.bold,
                  ),
                ),
                DropdownButton<String>(
                  dropdownColor: Color(0xFF2E2E2E),
                  value: _dropDownSelectedMonth,
                  items: _monthNames
                      .map(
                        (item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                      .toList(),
                  underline: SizedBox.shrink(),
                  onChanged: (String? month) {
                    _updateDaysList(month);
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
              bool isSelected = date.day == _selectedDate.day;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedDate = date;
                    widget.dateSelectCallBack.call(_selectedDate);
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _centerSelectedDate();
                    });
                  });
                },
                child: Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blueAccent[100] : Color(0xFF2E2E2E),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        date.day.toString(),
                        style: TextStyle(
                          color: date.day == today.day ? Colors.red : Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat('EEE').format(date),
                        style: TextStyle(
                          color: date.day == today.day ? Colors.red : Colors.white,
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
