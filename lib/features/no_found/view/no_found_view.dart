import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_series_app/core/routes/app_route_path.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class NoFoundView extends StatelessWidget {
  const NoFoundView({required this.error, super.key});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.noFoundTitle)),
      body: Padding(
        padding: const .symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: <Widget>[
              Text(error, textAlign: .center),
              TextButton(
                onPressed: () => context.go(AppRoutePath.movies.path),
                child: Text(context.l10n.noFoundReturnButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
