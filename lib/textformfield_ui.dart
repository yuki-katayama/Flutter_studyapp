
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldUi extends StatefulWidget {
  @override
  _TextFormFieldUiState createState() => _TextFormFieldUiState();
}

class _TextFormFieldUiState extends State<TextFormFieldUi> {
  int _currentStep = 0;

  StepperType _stepperType = StepperType.vertical;

  switchStepType() =>
      setState(() => _stepperType == StepperType.vertical
      ? _stepperType = StepperType.horizontal
      : _stepperType = StepperType.vertical);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormFieldUi"),
        centerTitle: true,
      ),
      body: Theme(
        data: ThemeData(),
        child: Stepper(
          steps: _stepper(),
          physics: ClampingScrollPhysics(),
          currentStep: this._currentStep,
          type: _stepperType,
          onStepTapped: (step){
          setState(() {
            this._currentStep = step;
          });
          },
          onStepContinue: () {
          setState(() {
            if(this._currentStep < this._stepper().length - 1){
              this._currentStep = this._currentStep + 1;
            } else {
              print("Complete");
            }
          });
          },
          onStepCancel: (){
          setState(() {
            if(this._currentStep > 0){
              this._currentStep = this._currentStep - 1;
            } else {
              this._currentStep = 0;
            }
          });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: switchStepType,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.swap_horizontal_circle,
        )
      ),
    );
  }


  List<Step> _stepper() {
    List<Step> _steps = [
      Step(
          title: Text("Name"),
          content: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "First Name",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Last Name",
              ),
            ),
          ],
        ),
        isActive: _currentStep >= 0,
        state: StepState.complete,
      ),
      Step(title: Text("Email"),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Recovery Name",
                ),
              ),
            ],
          ),
        isActive: _currentStep >= 1,
        state: StepState.disabled,
      ),
      Step(title: Text("Email"),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Recovery Name",
                ),
              ),
            ],
          ),
          isActive: _currentStep >= 2,
          state: StepState.editing
      ),
      Step(title: Text("Email"),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Recovery Name",
                ),
              ),
            ],
          ),
          isActive: _currentStep >= 3,
          state: StepState.error
      ),
      Step(title: Text("Email"),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Recovery Name",
                ),
              ),
            ],
          ),
          isActive: _currentStep >= 4,
          state: StepState.indexed
      ),
    ];
    return _steps;
  }
}
