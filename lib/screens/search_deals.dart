import 'package:flutter/material.dart';
import '../components/searchResult_body.dart';


class SearchResult extends StatefulWidget {
  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchResultsBody(),
    );
  }
}
