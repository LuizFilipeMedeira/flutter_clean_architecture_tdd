import 'package:clean_architecture_tdd/features/number_trivia/presentation/bloc/bloc.dart';
import 'package:clean_architecture_tdd/features/number_trivia/presentation/widgets/loading_widget.dart';
import 'package:clean_architecture_tdd/features/number_trivia/presentation/widgets/message_display.dart';
import 'package:clean_architecture_tdd/features/number_trivia/presentation/widgets/trivia_controls.dart';
import 'package:clean_architecture_tdd/features/number_trivia/presentation/widgets/trivia_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_architecture_tdd/injection_container.dart';

class NumberTriviaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Trivia'),
      ),
      body: SingleChildScrollView(
        child: BlocProvider(
          builder: (_) => sl<NumberTriviaBloc>(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                      builder: (context, state) {
                    if (state is Empty) {
                      return MessaDisplay(message: 'Start searching!');
                    } else if (state is Error) {
                      return MessaDisplay(message: state.message);
                    } else if (state is Loading) {
                      return LoagingWidget();
                    } else if (state is Loaded) {
                      return TriviaDisplay(numberTrivia: state.trivia);
                    }

                    return Container();
                  }),
                  SizedBox(
                    height: 20,
                  ),
                  TriviaControls()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
