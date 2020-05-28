import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocbloc/bloc/bloc.dart';
import 'package:pocbloc/widgets/viewstate.widget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: ViewState(),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      EdgeInsets.only(right: 30.0, left: 30.0, bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.check),
                          iconSize: 40.0,
                          color: Colors.green,
                          onPressed: () => BusinessLogicComponent()
                              .calledEventSuccess(context),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.warning),
                          iconSize: 40.0,
                          color: Colors.orange,
                          onPressed: () => BusinessLogicComponent()
                              .calledEventWarning(context),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.error),
                          iconSize: 40.0,
                          color: Colors.red,
                          onPressed: () => BusinessLogicComponent()
                              .calledEventException(context),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.all_inclusive),
                          iconSize: 40.0,
                          color: Colors.grey,
                          onPressed: () => BusinessLogicComponent()
                              .calledEventLoading(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
