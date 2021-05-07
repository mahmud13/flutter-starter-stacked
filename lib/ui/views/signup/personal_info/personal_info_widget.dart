import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/views/signup/personal_info/personal_info_widgetmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:validators/validators.dart';

import '../../../../generated/l10n.dart';
import '../../../shared/ui_helpers.dart';
import 'personal_info_widget.form.dart';

@FormView(fields: [
  FormTextField(name: 'name'),
  FormTextField(name: 'email'),
  FormTextField(name: 'phone'),
  FormTextField(name: 'password', isPassword: true),
  FormTextField(name: 'designation'),
])
class PersonalInfoWidget extends StatelessWidget with $PersonalInfoWidget {
  final _formKey = GlobalKey<FormState>();
  final Function onSubmit;
  PersonalInfoWidget({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PersonalInfoWidgetModel>.reactive(
      createNewModelOnInsert: false,
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
                        model.submit(onSubmit);
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
