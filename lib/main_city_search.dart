import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'generated/l10n.dart';
import 'main_bloc.dart';

class CitySearch extends SearchDelegate {
  List<String> cities = [
    S.current.Amsterdam,
    S.current.Beijing,
    S.current.Berlin,
    S.current.Brasilia,
    S.current.Kiev,
    S.current.London,
    S.current.Mexico_City,
    S.current.Minsk,
    S.current.Moscow,
    S.current.Ottawa,
    S.current.Paris,
    S.current.Rome,
    S.current.Singapore,
    S.current.Tokyo,
    S.current.Washington_DC
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
    IconButton(
        onPressed: (){
          query = '';
        },
        icon: const Icon(Icons.clear)
    )

    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return BlocProvider(
      create: (_) => MainBloc(),
      child: BlocBuilder <MainBloc, MainState> (
          builder: (context, state) {
            if (state is LoadedState){
              return loadedState(context, state);
            }
            if (state is ErrorState){
              return Center(
                child: Text(
                  '${S.current.error} ${state.error.cod} \n${state.error.message}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            }
            if (state is LoadingState){
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (query == '') {
              return Text(
                S.current.hint,
                style: Theme.of(context).textTheme.bodyMedium,
              );
            } else {
              context.read<MainBloc>().add(LoadEvent(cityName: query));
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = cities.where((element) {
      return element
          .toLowerCase()
          .contains(query.toLowerCase());
    }).toList();


    return ListView.builder(
      itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(suggestions[index]),
            onTap: (){
              query = suggestions[index];
              showResults(context);
            },
          );
        }
    );
  }


  Widget loadedState(BuildContext context, LoadedState state){
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * .66,
        height: size.height * .66,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: Theme.of(context).cardColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            text(context, '${S.current.city} ${state.weather.name}'),
            text(context, '${S.current.country} ${state.weather.sysCountry}'),
            text(context, '${S.current.description} ${state.weather.weatherDescription}'),
            text(context, '${S.current.temp} ${state.weather.mainTemp}'),
            text(context, '${S.current.wind} ${state.weather.windSpeed}'),
          ],
        ),
      ),
    );
  }

  Widget text(BuildContext context, String text){
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.center,
    );
  }


}