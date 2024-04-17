import 'package:flutter/material.dart';
import 'package:flutter_project/clean_architecture/presentation/search_list_view_model.dart';
import 'package:provider/provider.dart';

class SearchListScreen extends StatefulWidget {
  const SearchListScreen({super.key});

  @override
  State<SearchListScreen> createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  final _queryTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<SearchListViewModel>().onSearchByQuery('');
    });
  }

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchListViewModel>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('사진찾기 어플'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 60,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _queryTextEditingController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: '검색어',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          String query = _queryTextEditingController.text;
                          viewModel.onSearchByQuery(query);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 670,
              child: GridView.builder(
                itemCount: viewModel.state.hits.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      viewModel.state.hits[index].webformatURL,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
