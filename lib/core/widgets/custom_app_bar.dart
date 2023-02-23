import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    super.key,
    this.bottomChild,
    this.onSearch,
    this.onRestore,
  });

  final String title;
  final Widget? bottomChild;
  final VoidCallback? onSearch;
  final VoidCallback? onRestore;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      leading: InkWell(
        onTap: onSearch,
        child: const Icon(Icons.search_outlined, color: Colors.black),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: onRestore,
            child: const Icon(Icons.restart_alt_outlined, color: Colors.black),
          ),
        ),
      ],
      bottom: bottomChild != null
          ? PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: bottomChild!,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => bottomChild != null
      ? const Size.fromHeight(kToolbarHeight + 50)
      : const Size.fromHeight(kToolbarHeight);
}
