import "package:flutter/material.dart";

class catergory_card extends StatelessWidget {
  final iconimagepath;
  final name;
  catergory_card({
    required this.iconimagepath,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      width: 140,
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFF5F2F8),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Color(0xFFDDCDF5),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Image.asset(
              iconimagepath,
              width: 30,
              height: 30,
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
