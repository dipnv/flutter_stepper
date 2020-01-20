# flutter_stepper
horizontal stepper
- pubspec.yaml:
dependencies:
fa_stepper: ^0.0.1   
- constructor:
FAStepper({
    Key key,
    @required this.steps,
    this.physics,
    this.type = FAStepperType.vertical,
    this.titleIconArrange = FAStepperTitleIconArrange.column,
    this.stepNumberColor = IposColors.stepEdit,
    this.currentStep = 0,
    this.titleHeight = 66.0,
    this.onStepTapped,
    this.onStepContinue,
    this.onStepCancel,
    this.controlsBuilder,
  })  : assert(steps != null),
        assert(type != null),
        assert(currentStep != null),
        assert(0 <= currentStep && currentStep < steps.length),
        super(key: key);
