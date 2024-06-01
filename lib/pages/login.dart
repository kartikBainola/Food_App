import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool loggedIn = false;
  late String name;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool validatePassword(String password) {
    if (password.length < 8) {
      return false;
    }

    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasNumeric = password.contains(RegExp(r'[0-9]'));
    bool hasSpecialChars = password.contains(RegExp(r'[!@#$%^&*]'));

    return hasUppercase && hasLowercase && hasNumeric && hasSpecialChars;
  }


  void _validate(){
    final form = _formKey.currentState;
    if(!form!.validate()){
      return;

    }
    final name = _nameController.text;
    final email = _emailController.text;
    // Navigator.of(context).pushReplacementNamed(StopWatch.route);
    // Navigator.of(context).pushReplacementNamed(
    //   //Stopwatch.route,
    //   //arguments: name,
    // );
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 40, 24, 0),
          child: // Generated code for this Column Widget...
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/monkey.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 16),
                child: Text(
                  'Login to your account',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xFF1A0D36),
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Generated code for this emailAddress Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _emailController,
                              autofocus: true,
                              autofillHints: [AutofillHints.email],
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Email',
                                labelStyle:TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xD157636C),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00E0E3E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).colorScheme.primary,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).colorScheme.error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).colorScheme.error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF6F6F6),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(64, 24, 24, 24),
                                prefixIcon: Icon(
                                  Icons.mail_rounded,
                                  color: Color(0xFF9B9B9C),
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0,
                              ),
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.emailAddress,
                              validator:(text){
                                if(text!.isEmpty){
                                  return 'Enter the email address.';
                                }
                                final regex = RegExp('[^@]+@[^\.]+\..+');
                                if(!regex.hasMatch(text)){
                                  return 'Enter the valid Email';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        // Generated code for this password Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _nameController,
                              autofocus: true,
                              autofillHints: [AutofillHints.password],
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xD157636C),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00E0E3E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).colorScheme.primary,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).colorScheme.error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:Theme.of(context).colorScheme.error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF6F6F6),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(64, 24, 24, 24),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xFF9B9B9C),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {},
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    // _model.passwordVisibility
                                    //     ? Icons.visibility_outlined
                                    //     : Icons.visibility_off_outlined,
                                    Icons.visibility_outlined,
                                    color: Color(0xFF757575),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0,
                              ),
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.emailAddress,
                              validator: (text){
                                if (text!.length > 8) {
                                  return 'The password should be greater than 8 ';
                                }

                                final hasUppercase = text.contains(RegExp(r'[A-Z]'));
                                final  hasLowercase = text.contains(RegExp(r'[a-z]'));
                                final hasNumeric = text.contains(RegExp(r'[0-9]'));
                                final hasSpecialChars = text.contains(RegExp(r'[!@#$%^&*]'));
                                if(!hasUppercase.hasMatch)

                                return hasUppercase && hasLowercase && hasNumeric && hasSpecialChars;
                              },
                            ),
                          ),
                        ),



                      ],

                    )
                  )

              ),
            ],
          )

        ),

      ),
    );
  }
}
