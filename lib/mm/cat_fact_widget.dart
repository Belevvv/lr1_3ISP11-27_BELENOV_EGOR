import 'package:flutter/material.dart';

import 'package:flutter_application_1/services/api_service.dart';

class CatFactScreen extends StatefulWidget {
  @override
  _CatFactScreenState createState() => _CatFactScreenState();
}

class _CatFactScreenState extends State<CatFactScreen> {
  String _catFact = '';

  @override
  void initState() {
    super.initState();
    _loadCatFact();
  }

  Future<void> _loadCatFact() async {
    final apiService = ApiService();
    final catFact = await apiService.getCatFact();
    setState(() {
      _catFact = catFact['fact'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat Fact App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            _catFact,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCatFact,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
