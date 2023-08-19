import "package:flutter/material.dart";

class doctorCard extends StatelessWidget {
  final doctorname;
  final doctorimage;
  final designation;
  const doctorCard({
    required this.doctorname,
    required this.designation,
    required this.doctorimage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFF5F2F8),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFFDDCDF5),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(
              doctorimage,
            ),
          ),
          SizedBox(height: 7),
          Container(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 22,
                ),
                SizedBox(width: 5),
                Text(
                  "4.5",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Text(
            doctorname,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 7),
          Text(
            designation,
            style: const TextStyle(
              color: Color(0xFFB3B2B2),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
