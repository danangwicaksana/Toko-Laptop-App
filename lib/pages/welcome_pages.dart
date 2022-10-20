part of 'pages.dart';

class WellcomePage extends StatefulWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  State<WellcomePage> createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
  bool _isHidden = true;
  bool _isHiddenCourse = true;
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmPassword = true;

  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/images/login_image.png',
                height: 333, fit: BoxFit.fill),
            SizedBox(
              height: 15,
            ),
            Text(
              'Welcome',
              style: dangerTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet, \consectetur adipiscing elit, \sed do eiusmod',
              style: whiteTextStyle.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 51,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                    onPressed: () {
                      // NOTE: TAMPILAN MODAL REGISTER
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Wrap(
                                children: [
                                  // BAGIAN MODAL
                                  Container(
                                    color: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: secondaryColor,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(40),
                                              topLeft: Radius.circular(40))),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: defaultMargin),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // JARAK
                                            SizedBox(
                                              height: 25,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      // Text
                                                      "Selamat Datang",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              fontSize: 20,
                                                              color:
                                                                  blackColor),
                                                    ),
                                                    Text(
                                                      "Register",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 30,
                                                              color:
                                                                  blackColor),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Center(
                                                  child: InkWell(
                                                    onTap: () {
                                                      // KETIKA ICON DITEKAN
                                                      Navigator.pop(context);
                                                    },
                                                    child: Image.asset(
                                                      'assets/images/Close.png',
                                                      height: 30,
                                                      width: 30,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),

                                            SizedBox(
                                              height: 25,
                                            ),

                                            TextField(
                                                obscureText: _isHidden,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText:
                                                        "info@example.com",
                                                    labelText: "username/email",
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _tootleUsernameView,
                                                      child: Icon(_isHidden
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined),
                                                    ))),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            // NOTE : COURSE
                                            TextField(
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: "course",
                                                    labelText: "Course",
                                                    suffixIcon: InkWell(
                                                      onTap: () {
                                                        // KETIKA ICON DI TEKAN
                                                      },
                                                      child: Icon(_isHiddenCourse
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined),
                                                    ))),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            // NOTE : PASSWORD
                                            TextField(
                                                obscureText: _isHiddenPassword,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: "password",
                                                    labelText: "password",
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _tootlePasswordView,
                                                      child: Icon(_isHiddenPassword
                                                          ? Icons.lock_outline
                                                          : Icons
                                                              .lock_open_outlined),
                                                    ))),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            // NOTE : CONFIRM TO PASSWORD
                                            TextField(
                                                obscureText:
                                                    _isHiddenConfirmPassword,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText:
                                                        "confirm password",
                                                    labelText:
                                                        "confirm password",
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _tootleConfirmPasswordView,
                                                      child: Icon(_isHiddenPassword
                                                          ? Icons.lock_outline
                                                          : Icons
                                                              .lock_open_outlined),
                                                    ))),
                                            SizedBox(
                                              height: 20,
                                            ),

                                            Container(
                                                height: 60,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    2 * defaultMargin,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      'Register',
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  secondaryColor),
                                                    ),
                                                    style: ElevatedButton.styleFrom(
                                                        primary: primaryColor,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15))))),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text("Already have account?",
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                            color: primaryColor,
                                                            fontSize: 18)),
                                                Text("Login",
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                            color: dangerColor,
                                                            fontSize: 18))
                                              ],
                                            ),
                                            SizedBox(
                                              height: defaultMargin,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            });
                          });
                    },
                    child: Text(
                      'Create Account',
                      style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: secondaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))))),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                    onPressed: () {
                      // NOTE: TAMPILAN MODAL REGISTER
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Wrap(
                                children: [
                                  // BAGIAN MODAL
                                  Container(
                                    color: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: secondaryColor,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(40),
                                              topLeft: Radius.circular(40))),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: defaultMargin),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // JARAK
                                            SizedBox(
                                              height: 25,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      // Text
                                                      "Selamat Datang",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              fontSize: 20,
                                                              color:
                                                                  blackColor),
                                                    ),
                                                    Text(
                                                      "Register",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 30,
                                                              color:
                                                                  blackColor),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Center(
                                                  child: InkWell(
                                                    onTap: () {
                                                      // KETIKA ICON DITEKAN
                                                      Navigator.pop(context);
                                                    },
                                                    child: Image.asset(
                                                      'assets/images/Close.png',
                                                      height: 30,
                                                      width: 30,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),

                                            SizedBox(
                                              height: 25,
                                            ),
                                            TextField(
                                                obscureText: _isHidden,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText:
                                                        "info@example.com",
                                                    labelText: "username/email",
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _tootleUsernameView,
                                                      child: Icon(_isHidden
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined),
                                                    ))),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            // NOTE : PASSWORD
                                            TextField(
                                                obscureText: _isHiddenPassword,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: "password",
                                                    labelText: "password",
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _tootlePasswordView,
                                                      child: Icon(_isHiddenPassword
                                                          ? Icons.lock_outline
                                                          : Icons
                                                              .lock_open_outlined),
                                                    ))),

                                            SizedBox(
                                              height: 20,
                                            ),

                                            Row(
                                              children: [
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFD7D7D7),
                                                      border: Border.all(
                                                          color: primaryColor,
                                                          width: 3),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Checkbox(
                                                    value: _isChecked,
                                                    checkColor:
                                                        Color(0xFFD7D7D7),
                                                    onChanged: (value) {
                                                      setState(() {
                                                        this._isChecked =
                                                            value!;
                                                      });
                                                    },
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("Remember me",
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                            color: primaryColor,
                                                            fontSize: 12)),
                                                Spacer(),
                                                Text("Forgot Password?",
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                            color: primaryColor,
                                                            fontSize: 12)),
                                              ],
                                            ),

                                            Container(
                                                height: 20,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    2 * defaultMargin,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      'Login',
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  secondaryColor),
                                                    ),
                                                    style: ElevatedButton.styleFrom(
                                                        primary: primaryColor,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15))))),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text("Don't have an account?",
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                            color: primaryColor,
                                                            fontSize: 18)),
                                                Text("Register",
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                            color: dangerColor,
                                                            fontSize: 18))
                                              ],
                                            ),
                                            SizedBox(
                                              height: defaultMargin,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            });
                          });
                    },
                    child: Text(
                      'Login',
                      style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: secondaryColor, width: 3),
                            borderRadius: BorderRadius.circular(15))))),
            SizedBox(
              height: 36,
            ),
            Text(
              'Danang Wicaksana | 210505974014',
              textAlign: TextAlign.center,
              style:
                  whiteTextStyle.copyWith(color: secondaryColor, fontSize: 11),
            ),
            SizedBox(
              height: defaultMargin,
            ),
          ],
        ),
      ),
    );
  }

  void _tootleUsernameView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _tootleCourseView() {
    setState(() {
      _isHiddenCourse = !_isHidden;
    });
  }

  void _tootlePasswordView() {
    setState(() {
      _isHiddenPassword = !_isHidden;
    });
  }

  void _tootleConfirmPasswordView() {
    setState(() {
      _isHiddenConfirmPassword = !_isHidden;
    });
  }
}
