import 'package:flutter/material.dart';

class LastBox extends StatelessWidget {
  const LastBox({super.key, required this.mainTitle, required this.imageString});
  final String mainTitle;
  final String imageString;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.37,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .center, // Align children to the start (left) of the column
        children: [
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 8),
          
              const SizedBox(
                  width: 8), // Add some spacing between the image and text
               Text(
               mainTitle,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Image.asset(imageString),
          Text(
            "There is no time to be displayed",
            style: TextStyle(color: Colors.grey[300]),
          )

          // Add more widgets as needed
        ],
      ),
    );
  }
}
