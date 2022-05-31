import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_recreate/home/home.dart';
import 'package:ui_recreate/provider_page/pd_handler.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  int check = 0;
  @override
  Widget build(BuildContext context) {
    print('widget build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Consumer<counterProvider>(
              builder: (_, value, __) {
                return Text('${value.counter}', style: Theme.of(context).textTheme.headline4);
              }
            ),
            const Text('Provider Value'),
            const Text(''),
            const Text(''),
            Text('$check', style: Theme.of(context).textTheme.headline4),
            const Text('Check Value'),
            const Text(''),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const Home()));
              },
              child: Image.network(
                'https://picsum.photos/250?image=9',
                width: 200.0,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: null,
            child: const Icon(Icons.check),
            onPressed: () {
              check++;
              setState(() {});
            },
          ),
          const SizedBox(height: 10.0),
          FloatingActionButton(
            heroTag: null,
            child: const Icon(Icons.add),
            onPressed: () {
              Provider.of<counterProvider>(context, listen: false).increment();
            },
          ),
        ],
      ),
    );
  }
}
