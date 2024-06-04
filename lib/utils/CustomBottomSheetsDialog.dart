import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Future<T?> showBottomSheetDialog<T>(BuildContext context, String playUrl) async {
  return await showModalBottomSheet<T>(
    context: context,
    builder: (context) => CustomBottomSheetsDialog(playUrl: playUrl),
  );
}

class CustomBottomSheetsDialog extends StatefulWidget{
  final String playUrl;
  const CustomBottomSheetsDialog({super.key, required this.playUrl});

  @override
  State<StatefulWidget> createState() => _BuildBottomSheetDialogState();

}

class _BuildBottomSheetDialogState extends State<CustomBottomSheetsDialog>{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3.5,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Color(0xFF383838),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {

              },
              child: const Icon(Icons.close, color: Colors.red,),
            ),
          ),
          const Text(
              'This is the bottom sheet content',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}