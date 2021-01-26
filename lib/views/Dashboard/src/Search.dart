import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(
                      key: const ValueKey('ReplyExit'),
                      onPressed: () {
                        Provider.of<EmailStore>(
                          context,
                          listen: false,
                        ).onSearchPage = false;
                      },
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Поиск',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.mic),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    @required this.title,
  }) : assert(title != null);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 16,
        top: 16,
        bottom: 16,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}

class _SearchHistoryTile extends StatelessWidget {
  const _SearchHistoryTile({
    this.icon = Icons.access_time,
    @required this.search,
    @required this.address,
  })  : assert(search != null),
        assert(address != null);

  final IconData icon;
  final String search;
  final String address;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(search),
      subtitle: Text(address),
      onTap: () {},
    );
  }
}