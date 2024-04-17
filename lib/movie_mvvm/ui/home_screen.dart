import 'package:flutter/material.dart';
import 'package:flutter_project/movie_mvvm/ui/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  final HomeViewModel viewModel;
  const HomeScreen({super.key, required this.viewModel});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();

  void updateUi() => setState(() {});
  @override
  void initState() {
    super.initState();
    widget.viewModel.addListener(updateUi);
  }

  @override
  void dispose() {
    super.dispose();
    widget.viewModel.removeListener(updateUi);
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = widget.viewModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text('무비서치'),
        actions: [
          TextButton(
            onPressed: () => viewModel.fetchMovies(),
            child: Text('새로고침'),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Form(
                key: _formKey,
                child: SizedBox(
                  width: 280,
                  child: TextFormField(
                    onChanged: (value) {
                      viewModel.onSearchUser(_searchController.text);
                    },
                    controller: _searchController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '영화 제목',
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => viewModel.onSearchUser(_searchController.text),
                child: const Text('검색하기'),
              ),
            ],
          ),
          Expanded(
            child: GridView(
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.7,
              ),
              shrinkWrap: true,
              children: [
                ...viewModel.movieList.map(
                  (e) => SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 320,
                          child: Image(
                            image: NetworkImage(
                              'https://image.tmdb.org/t/p/original${e.posterPath}',
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(e.title),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
          //...viewModel.movieList.map((e) => Text(e.title)),
        ],
      ),
    );
  }
}
