part of 'widgets.dart';

class CustomElevationButton extends StatelessWidget {
  CustomElevationButton(
      {this.child,
      this.color,
      this.height: 50.0,
      this.borderRadius: 2.0,
      this.onPressed})
      : assert(borderRadius != null);
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              )),
              backgroundColor: MaterialStateProperty.all(color),
            ),
            onPressed: onPressed,
            child: child));
  }
}
