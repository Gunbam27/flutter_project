import 'package:flutter/material.dart';
import 'package:flutter_project/img_search/ui/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

class SearchListScreen extends StatefulWidget {
  const SearchListScreen({super.key});

  @override
  State<SearchListScreen> createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  final _queryTextEditingController = TextEditingController();

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchListViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색 1'),
      ),
      body: Column(
        children: [
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: '검색어',
              suffixIcon: IconButton(
                  onPressed: () {
                    final query = _queryTextEditingController.text;
                    viewModel.onSearch(query);
                  },
                  icon: const Icon(Icons.search_rounded)),
            ),
          ),
          Expanded(
            child: viewModel.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : GridView.count(
                    crossAxisCount: 2,
                    children: viewModel.photos
                        .map((e) => ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                e.url,
                                fit: BoxFit.cover,
                              ),
                            ))
                        .toList(),
                  ),
          ),
        ],
      ),
    );
  }
}
