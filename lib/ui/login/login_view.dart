import 'package:customer/generated/l10n.dart';
import 'package:customer/ui/dumb_widgets/authentication_layout.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_view.form.dart';
import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
  FormTextField(name: 'phone'),
])
class LoginView extends StatelessWidget with $LoginView {
  final _formKey = GlobalKey<FormState>();

  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
          body: AuthenticationLayout(
        busy: model.isBusy,
        onMainButtonTapped: () {
          if (_formKey.currentState!.validate()) {
            model.saveData();
          }
        },
        onCreateAccountTapped: model.navigateToCreateAccount,
        validationMessage: model.validationMessage,
        title: S.of(context).formPageAppBarTitle,
        subtitle: 'Enter your email address to sign in. Enjoy your food',
        mainButtonTitle: 'SIGN IN',
        form: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Please';
                  }
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                controller: passwordController,
              ),
              ElevatedButton(
                onPressed: model.changeLocale,
                child: child,
              )
            ],
          ),
        ),
        onBackPressed: () => Text('nono'),
        onForgotPassword: () {},
        onSignInWithGoogle: model.useGoogleAuthentication,
        onSignInWithApple: model.useAppleAuthentication,
      )),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
