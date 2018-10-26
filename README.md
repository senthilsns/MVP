# MVP
Model View Presenter

Platform : Xcode 10
Language : Swift 4.2


- Model is an interface  responsible for the domain data (to be displayed or otherwise acted upon in the GUI)

- View is responsible for the presentation layer (GUI)

- Presenter is the "middle-man" between Model and View. It reacts to the user’s actions performed on the View, retrieves data from the Model, and formats it for display in the View


Advantages

1.The view part of the MVP consists of both UIViews and UIViewController

2.The view delegates user interactions to the presenter

3.The presenter contains the logic to handle user interactions

4.The presenter communicates with model layer, converts the data to UI friendly format, and updates the view

