import 'package:furijat_flutter/utils/global_utils.dart';
import 'package:flutter/material.dart';

class StarRatingComponent extends StatelessWidget {
  StarRatingComponent({Key? key, required this.rating, this.backgroundColor = Colors.white, this.scale = 0.8})
      : super(key: key);

  final String rating;
  final Color backgroundColor;
  final double scale;

  StarRatingComponent.normal({rating: String, backgroundColor: Color})
      : this(rating: rating, backgroundColor: backgroundColor, scale: 1.2);
  @override
  Widget build(BuildContext context) {
    final isRtl = isRTL(context);
    return Transform.scale(
      scale: scale,
      child: Chip(
        backgroundColor: backgroundColor,
        labelPadding: const EdgeInsets.symmetric(vertical: -5),
        padding: EdgeInsets.only(left: isRtl ? 8 : 0, right: isRtl ? 0 : 8),
        avatar: Icon(Icons.star, color: Color.fromARGB(255, 255, 204, 0), size: 12),
        label: Text(
          rating,
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
