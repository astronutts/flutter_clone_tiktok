import 'package:flutter/material.dart';
import 'package:flutter_clone_tiktok/constants/gaps.dart';
import 'package:flutter_clone_tiktok/constants/sizes.dart';
import 'package:flutter_clone_tiktok/features/authentication/signup_screen.dart';
import 'package:flutter_clone_tiktok/widgets/auth_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Gaps.v20,
                const Text(
                  "Log in to TikTok",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Sizes.size20 + Sizes.size10,
                  ),
                ),
                Gaps.v20,
                Text(
                  'Manage your account, check notifications, comment on videos, and more',
                  style: TextStyle(
                      fontSize: Sizes.size16 + Sizes.size3,
                      color: Colors.grey.shade600),
                  textAlign: TextAlign.center,
                ),
                Gaps.v40,
                const AuthButton(
                  text: "Use phone / email / username",
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                  ),
                ),
                Gaps.v20,
                const AuthButton(
                  text: "Continue with Facebook",
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                ),
                Gaps.v20,
                const AuthButton(
                  text: "Continue with Google",
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                  ),
                ),
                Gaps.v20,
                const Icon(
                  FontAwesomeIcons.angleDown,
                ),
                Gaps.v40,
                const Text(
                  'By continuing, you agree to our Terms of Services and acknowledge that you have read our Privacy Policy to learn how we collect, use, and share your data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.grey.shade100,
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Dont\'t have an account? ',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const SignUpScreen()),
                    ),
                  );
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ))
          ],
        ),
      ),
    );
  }
}
