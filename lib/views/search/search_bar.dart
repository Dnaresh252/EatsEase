import 'package:flutter/material.dart';
class SearchBar extends StatefulWidget {
  final Function(String)? onQueryChanged;
  const SearchBar({Key? key, required this.onQueryChanged}) : super(key: key);
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String query = '';

  void _handleQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
    });
    if (widget.onQueryChanged != null) {
      widget.onQueryChanged!(newQuery); // Call the function provided by the parent
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(16),
      child: TextField(
        onChanged: _handleQueryChanged  ,
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
