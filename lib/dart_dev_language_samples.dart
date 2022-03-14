

void main() {
  lateVariables();
}

// most variables don't need explicit types thanks to type inference:
// Variables store references. The variable called name contains a reference to a String object with a value of “Voyager I”.
//  If an object isn’t restricted to a single type, specify the Object type (or dynamic if necessary).
var name =  'Voyager I';
var year = 1997;
var antennaDiameter = 3.7;
var flyByObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};

void lateVariables() {
  print('Jack');
}


// if (year >= 2001) {
//   print('21st century');
// } else if (year >= 1901) {
//   print('20th century');
// }

