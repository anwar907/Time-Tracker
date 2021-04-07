part of 'pages.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key key, @required this.auth}) : super(key: key);

  final AuthBase auth;
  Future<void> _signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [ElevatedButton(onPressed: _signOut, child: Text("Logout"))],
      ),
    );
  }
}
