import 'package:components/themes/global_themes.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> listImages = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >
          scrollController.position.maxScrollExtent)
        fetchData();
    });
  }

  void addScroll() {
    final lastId = listImages.last;

    listImages.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
    print("generar nuevos elementos");
  }

  Future fetchData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    addScroll();
    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent)
      return;
    scrollController.animateTo(
      scrollController.position.pixels + 120,
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    final lastId = listImages.last;
    listImages.clear();
    listImages.add(lastId + 1);

    addScroll();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          MediaQuery.removePadding(
            context: context,
            removeBottom: true,
            removeTop: true,
            child: RefreshIndicator(
              color: GlobalThemes.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                physics: BouncingScrollPhysics(),
                itemCount: listImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: AssetImage("assets/jar-loading.gif"),
                    image: NetworkImage(
                      "https://picsum.photos/500/300?image=${listImages[index]}",
                    ),
                  );
                },
              ),
            ),
          ),

          if (isLoading)
            Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,
              child: _loadingCircle(),
            ),
        ],
      ),
    );
  }
}

class _loadingCircle extends StatelessWidget {
  const _loadingCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: CircularProgressIndicator(color: GlobalThemes.primary),
    );
  }
}
