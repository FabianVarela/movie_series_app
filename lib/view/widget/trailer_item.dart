import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class TrailerItem extends StatelessWidget {
  const TrailerItem({Key? key, required this.trailer}) : super(key: key);

  final TrailerModel trailer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            height: 72,
            color: Colors.grey,
            child: Center(
              child: Icon(Icons.play_circle_filled),
            ),
          ),
          Text(
            trailer.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
