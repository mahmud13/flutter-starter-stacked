import 'package:crowd_sourcing/generated/l10n.dart';
import 'package:crowd_sourcing/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = S.of(context);
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => WillPopScope(
        onWillPop: model.handleBack,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            actions: <Widget>[
              PopupMenuButton<String>(
                onSelected: model.handleMenuItemClick,
                itemBuilder: (BuildContext context) {
                  return {'Profile', 'Logout'}.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          body: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(l.welcome),
                  Text(
                    model.currentUser.name ?? 'Anonymous',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    model.currentUser.designation ?? '',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    model.currentUser.faktory!.name,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  verticalSpaceLarge,
                  Text(
                    'You have earned 250 points',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.primaryColorDark,
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        OutlinedButton.icon(
                          label: Text(l.suggestAnEdit),
                          onPressed: () => true,
                          icon: Icon(Icons.edit),
                        ),
                        OutlinedButton.icon(
                          label: Text(l.viewSubmissionReport),
                          onPressed: () => true,
                          icon: Icon(Icons.visibility),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(color: theme.primaryColor),
                  child: Text(
                    model.currentUser.name ?? 'Anonymous',
                    style: theme.textTheme.headline5!
                        .copyWith(color: Colors.white),
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
