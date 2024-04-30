import 'package:flutter/material.dart';


class FirstFivePages extends StatefulWidget {
  final String title;

  const FirstFivePages({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _FirstFivePageState();
}

class _FirstFivePageState extends State<FirstFivePages> {

  double currentProgress = 0.5;

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

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xFF7F56D9),
                  backgroundImage: AssetImage('assets/images/check_icon.png'),
                  radius: 10,
                ),
                Container(
                  height: 4.0,
                  width: 48.0,
                  color: Color(0xFF7F56D9),
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xFF7F56D9),
                  backgroundImage: AssetImage('assets/images/circle_icon.png'),
                  radius: 10,
                ),
                Container(
                  height: 4.0,
                  width: 48.0,
                  color: Color(0xFF7F56D9),
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xFF7F56D9),
                  backgroundImage: AssetImage('assets/images/circle_white.png'),
                  radius: 10,
                ),
                Container(
                  height: 4.0,
                  width: 48.0,
                  color: Colors.white,
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xFF7F56D9),
                  backgroundImage: AssetImage('assets/images/circle_white.png'),
                  radius: 10,
                ),

              ],
            ),


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
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 6, right: 16, bottom: 6),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                widget.title,
                                style: const TextStyle(
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
