part of 'widgets.dart';

class SocialSignInButton extends CustomElevationButton {
  SocialSignInButton({
    @required String assetsName,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(assetsName != null),
        assert(text != null),
        super(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(assetsName),
                Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
                Opacity(child: Image.asset(assetsName), opacity: 0.0)
              ],
            ),
            color: color,
            borderRadius: 8.0,
            onPressed: onPressed);
}
