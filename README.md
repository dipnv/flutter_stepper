# flutter_stepper <br />
# horizontal stepper <br />
# - pubspec.yaml: <br />
dependencies: <br />
fa_stepper: ^0.0.1   
# - constructor:
FAStepper({  <br />
    Key key, <br />
    @required this.steps, <br />
    this.physics, <br />
   **this.type = FAStepperType.horizontal, <br /> 
   this.titleIconArrange = FAStepperTitleIconArrange.column, <br />
   this.stepNumberColor = IposColors.stepEdit, <br />**
    this.currentStep = 0, <br />
   **this.titleHeight = 66.0, <br />**
    this.onStepTapped, <br />
    this.onStepContinue, <br />
    this.onStepCancel, <br />
    this.controlsBuilder, <br />
  })  : assert(steps != null), <br />
        assert(type != null),
        assert(currentStep != null), <br />
        assert(0 <= currentStep && currentStep < steps.length), <br />
        super(key: key); <br />
