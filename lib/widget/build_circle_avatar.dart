import 'package:flutter/material.dart';

class BuildCircleAvatar extends StatefulWidget {
  final double radius;
  final ImageProvider<Object> image;
  final Widget? child;
  const BuildCircleAvatar(
      {super.key, required this.radius, this.child, required this.image});

  @override
  State<BuildCircleAvatar> createState() => _BuildCircleAvatarState();
}

class _BuildCircleAvatarState extends State<BuildCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: widget.radius,
      backgroundImage: widget.image,
      child: widget.child,
    );
  }
}
