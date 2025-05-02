import 'package:flutter/material.dart';
import 'package:netflixproject/core/colors/colors.dart';

class Videowidget extends StatelessWidget {
  final String url;
  const Videowidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            url,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if(loadingProgress==null){
                return child;
              }else{
               return Center(child: CircularProgressIndicator(strokeWidth: 2,));
              }
            },
            errorBuilder: (context, error, stackTrace) {
              return Center(child: Icon(Icons.wifi,color: Colors.white,));
            },
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 20,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.volume_off, weight: 12, color: kwhite, size: 30),
            ),
          ),
        ),
      ],
    );
  }
}
