import 'package:flutter/material.dart';

class OtherPages extends StatefulWidget {
  final String title;

  const OtherPages({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPages> {
  bool isCheckedYes = false;
  bool isCheckedNo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101010),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color(0xFF101010),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Color(0xFF1F1F1F),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 55.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero),
                          color: Color(0xFF2E2E2E),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.only(
                                left: 16, top: 6, right: 16, bottom: 6),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Invite",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Name of Local Council',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'City',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.0,
                            top: 16.0,
                            right: 16.0,
                            bottom: 8.0,
                          ),
                          child: Text(
                            "Contact Information",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Home Address',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Telephone',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Business Address',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Business Telephone',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Cell Phone',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Date of Birth',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Social Security Number',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.0,
                            top: 8.0,
                            right: 16.0,
                            bottom: 8.0,
                          ),
                          child: Text(
                            "Valid Driver’s Licence",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isCheckedYes = !isCheckedYes;
                              });
                            },
                            child: Row(
                              children: [
                                Checkbox(
                                  value: isCheckedYes,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isCheckedYes = value!;
                                    });
                                  },
                                ),
                                const Text(
                                  "Yes",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isCheckedNo = !isCheckedNo;
                              });
                            },
                            child: Row(
                              children: [
                                Checkbox(
                                  value: isCheckedNo,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isCheckedNo = value!;
                                    });
                                  },
                                ),
                                const Text(
                                  "No",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.0,
                            top: 8.0,
                            right: 16.0,
                            bottom: 8.0,
                          ),
                          child: Text(
                            "Emergency Information",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Special Medical Needs',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Emergency procedures',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.0,
                            top: 8.0,
                            right: 16.0,
                            bottom: 8.0,
                          ),
                          child: Text(
                            "Emergency Contact Information",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Relation',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Home Phone',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Other Phone',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Address',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 16.0,
                          top: 16.0,
                          right: 16.0,
                          bottom: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Availability to Volunteer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.add,
                              size: 24.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Start Date',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Hours Needed',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Completion Date',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              //Add your load more logic
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: const Size(double.infinity, 56.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: const Text(
                            'Send Invite',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 20.0,
                  right: 10.0,
                  bottom: 20.0,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero),
                    color: Color(0xFF1F1F1F),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 55.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero),
                          color: Color(0xFF2E2E2E),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.only(
                                left: 16, top: 6, right: 16, bottom: 6),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Donate",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'First Name',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Last Name',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Card Details',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Date',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'CVC',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Billing Address',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Donation Amount',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              //Add your load more logic
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: const Size(double.infinity, 56.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: const Text(
                            'Donate',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 20.0,
                  right: 10.0,
                  bottom: 20.0,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero),
                    color: Color(0xFF1F1F1F),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 55.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero),
                          color: Color(0xFF2E2E2E),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.only(
                                left: 16, top: 6, right: 16, bottom: 6),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Comment",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Member Name',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: SizedBox(
                          height: 150.0,
                          child: TextField(
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            minLines: 5,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                              hintText: 'Leave a Comment',
                              hintStyle: const TextStyle(
                                color: Colors.white30,
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF363636)),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xFF292929),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              //Add your load more logic
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: const Size(double.infinity, 56.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: const Text(
                            'Comment',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 20.0,
                  right: 10.0,
                  bottom: 20.0,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero),
                    color: Color(0xFF1F1F1F),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 55.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero),
                          color: Color(0xFF2E2E2E),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.only(
                                left: 16, top: 6, right: 16, bottom: 6),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Prayer",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Surname',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Date of Birth',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Sex',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Address',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Employment Status',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Addictions',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Marriage Status',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Number of Children',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Three possible day of availability',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: SizedBox(
                          height: 120,
                          child: TextField(
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            minLines: 3,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                              hintText:
                                  'List Family Members (use bracket for phone number, then (,) for each member',
                              hintMaxLines: 3,
                              hintStyle: const TextStyle(
                                color: Colors.white30,
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF363636)),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xFF292929),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'List Family Members you want saved',
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF363636)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF292929),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          right: 16.0,
                          bottom: 6.0,
                        ),
                        child: SizedBox(
                          height: 150.0,
                          child: TextField(
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            minLines: 5,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                              hintText: 'Prayer Request',
                              hintStyle: const TextStyle(
                                color: Colors.white30,
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF363636)),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xFF292929),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              //Add your load more logic
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: const Size(double.infinity, 56.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
