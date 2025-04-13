import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.bottomChild,
    this.onChangeTheme,
    this.onRestore,
    super.key,
  });

  final String title;
  final Widget? bottomChild;
  final VoidCallback? onChangeTheme;
  final VoidCallback? onRestore;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
      ),
      leading: InkWell(
        onTap: onChangeTheme,
        child: const Icon(Icons.color_lens_outlined),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: onRestore,
            child: const Icon(Icons.restart_alt_outlined),
          ),
        ),
      ],
      bottom: switch (bottomChild != null) {
        true => PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: bottomChild!,
        ),
        false => null,
      },
    );
  }

  @override
  Size get preferredSize =>
      bottomChild != null
          ? const Size.fromHeight(kToolbarHeight + 50)
          : const Size.fromHeight(kToolbarHeight);
}
