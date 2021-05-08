import 'package:crowd_sourcing/models/application_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:validators/validators.dart';

import '../../../../generated/l10n.dart';
import '../../../shared/ui_helpers.dart';
import 'personal_info_widgetmodel.dart';

class PersonalInfoWidget extends StatefulWidget {
  final Function onSubmit;
  PersonalInfoWidget({Key? key, required this.onSubmit}) : super(key: key);

  @override
  _PersonalInfoWidgetState createState() => _PersonalInfoWidgetState();
}

class _PersonalInfoWidgetState extends State<PersonalInfoWidget> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final designationController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PersonalInfoWidgetModel>.reactive(
      builder: (context, model, child) => Form(
        key: _formKey,
        autovalidateMode: model.autovalidateMode,
        child: Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: S.current.name),
                controller: nameController,
                validator: (value) =>
                    isNull(value) ? S.current.nameIsRequired : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: S.current.email),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                validator: (value) => isNull(value)
                    ? S.of(context).emailIsRequired
                    : !isEmail(value!)
                        ? S.of(context).emailIsInvalid
                        : null,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: S.current.password,
                  suffix: GestureDetector(
                    onTap: () => model.togglePasswordVisibility(),
                    child: Icon(model.isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
                controller: passwordController,
                obscureText: !model.isPasswordVisible,
                validator: (value) => isNull(value)
                    ? S.current.passwordIsRequired
                    : !isLength(value!, 6)
                        ? S.current.passwordShouldBeLong(6)
                        : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: S.current.phone),
                controller: phoneController,
                keyboardType: TextInputType.phone,
                validator: (value) =>
                    isNull(value) ? S.current.phoneIsRequired : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: S.current.designation),
                controller: designationController,
                validator: (value) =>
                    isNull(value) ? S.current.designationIsRequired : null,
              ),
              verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        widget.onSubmit(User(
                          name: nameController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                          password: passwordController.text,
                          designation: designationController.text,
                        ));
                      } else {
                        model.setAutovalidateModeAlways();
                      }
                    },
                    child: Text(S.current.next),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => PersonalInfoWidgetModel(),
    );
  }
}
