import 'package:fa_stepper/fa_stepper.dart';
import 'package:flutter/material.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Simple Material App",
      // Home
      home: MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  // init the step to 0th position
  int currentStep = 0;
  List<FAStep> mySteps = [
    FAStep(
        // Title of the Step
        title: //Text("Step 1"),
            Column(
          children: <Widget>[
            Icon(
              Icons.account_box,
              color: Colors.grey,
              size: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text("Step01"),
            )
          ],
        ),
        // Content, it can be any widget here. Using basic Text for this example,
        subtitle: Text("subT"),
        content: First(),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Icon(
            Icons.account_box,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Step02"),
          )
        ]),
        content: Second(), //Text("World!"),
        // You can change the style of the step icon i.e number, editing, etc.
        state: FAStepstate.complete, //FAStepState.complete,
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Icon(
            Icons.account_box,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Step03"),
          )
        ]),
        content: Third(),
        // Text("Hello World!"),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Icon(
            Icons.account_box,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Step04"),
          )
        ]),
        content: Text("Hello!"),
        // Text("Hello World 4!"),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Icon(
            Icons.account_box,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Step05"),
          )
        ]),
        content: Text("Hello World5!"),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Icon(
            Icons.account_box,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Step06"),
          )
        ]),
        content: Text("Hello World 6!"),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Icon(
            Icons.account_box,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Step07"),
          )
        ]),
        content: Text("Hello World7!"),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Icon(
            Icons.account_box,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Step08"),
          )
        ]),
        content: Text("Hello World8!"),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Icon(
            Icons.account_box,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Step09"),
          )
        ]),
        content: Text("Hello World9!"),
        isActive: true),
    // FASStep(
    //     title: Text("Step 10 sdvjnds dvbdl fsvjnsf dnvjldsb"),
    //     content: Text("Hello World10!"),
    //     isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Icon(
            Icons.account_box,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Step10"),
          )
        ]),
        content: Text("Hello World10!"),
        isActive: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Appbar
        appBar: AppBar(
          // Title
          title: Text("Simple Material App"),
        ),
        // Body
        body: w1(context));
  }

  Widget w1(BuildContext context) {
    return Scaffold(      
      // Body
      body: Container(
          child: FAStepper(
        // physics: ClampingScrollPhysics(),
        // Using a variable here for handling the currentStep
        currentStep: this.currentStep,
        // List the steps you would like to have
        titleHeight: 120,
        steps: mySteps,
        // Define the type of Stepper style
        // StepperType.horizontal :  Horizontal Style
        // StepperType.vertical   :  Vertical Style
        type: FAStepperType.horizontal,
        titleIconArrange: FAStepperTitleIconArrange.column,
        stepNumberColor: Colors.pinkAccent,
        // Know the step that is tapped
        onStepTapped: (step) {
          // On hitting step itself, change the state and jump to that step
          setState(() {
            // update the variable handling the current step value
            // jump to the tapped step
            currentStep = step;
          });
          // Log function call
          print("onStepTapped : " + step.toString());
        },
        onStepCancel: () {
          // On hitting cancel button, change the state
          setState(() {
            // update the variable handling the current step value
            // going back one step i.e subtracting 1, until its 0
            if (currentStep > 0) {
              currentStep = currentStep - 1;
            } else {
              currentStep = 0;
            }
          });
          // Log function call
          print("onStepCancel : " + currentStep.toString());
        },
        // On hitting continue button, change the state
        onStepContinue: () {
          setState(() {
            // update the variable handling the current step value
            // going back one step i.e adding 1, until its the length of the step
            if (currentStep < mySteps.length - 1) {
              currentStep = currentStep + 1;
            } else {
              currentStep = 0;
            }
          });
          // Log function call
          print("onStepContinue : " + currentStep.toString());
        },
      )),
    );
  }
}
