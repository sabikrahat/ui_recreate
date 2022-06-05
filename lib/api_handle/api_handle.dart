import 'package:flutter/material.dart';
import 'package:ui_recreate/api_handle/http_api.dart';
import 'package:ui_recreate/api_handle/model/model.dart';

class ApiHandleWidget extends StatelessWidget {
  const ApiHandleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<PokemonModel?>(
        future: fetechData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.pokemon!.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: Image.network(
                    snapshot.data!.pokemon![index].img!,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(snapshot.data!.pokemon![index].name!),
                  subtitle: Text(
                      snapshot.data!.pokemon![index].candyCount.toString()),
                  trailing: Text('${index + 1}'));
            },
          );
        },
      ),
    );
  }
}
