import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
    final bool isLastItem;


  CustomListItem(
      {required this.label, required this.onPressed, this.isLastItem = false});

 @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Text(label)),
            if (isLastItem)
              IconButton(
                icon: const Icon(Icons.add,color: Colors.blue,),
                onPressed: onPressed,
              )
            else
              Icon(Icons.arrow_forward_ios),
          ],
        ),
        const SizedBox(height: 5),
        
       
      ],
    );
    
  }
}
