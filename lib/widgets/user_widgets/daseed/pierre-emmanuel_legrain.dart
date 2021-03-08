part of user_widgets;

class DaseedInfo extends WidgetInfo {
  get name => "Pierre-emmanuel aka Daseed's widget ";
  get description => ".NET Software Engineer - Boardgamer - Flutter maniac";
  get developer => "Pierre-emmanuel Legrain";
  get logoPath => "assets/profile_images/daseed_profile.jpg";
  get widget => DaseedWidget();
}

DaseedInfo daseed = DaseedInfo();

// User's widget lives here
class DaseedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final color = Theme.of(context).primaryColor;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            DaseedInfo().developer,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Stack(
          children: [
            CustomPaint(
                painter: DecorationPainter(size.height, size.width, color),
                size: size),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 130,
                ),
                Center(
                  child: Container(
                    child: CircleAvatar(
                      radius: size.width / 8,
                      backgroundImage: ExactAssetImage(
                          "assets/profile_images/daseed_profile.jpg"),
                    ),
                  ),
                ),
                MyProfile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
