// //hello world

void main() {
  print("Olá, Mundo!");
} 


// //variáveis

String name = 'Voyager I';
int year = 1977;
double antennaDiameter = 3.7;
List<String> flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
Map<String, String> image = {
  'tags': 'saturn',
  'url': '//path/to/saturn.jpg'
};


// //tipagem opcional

//declaração explícita do tipo da variável (String)
String name = 'Voyager I';

//declaração de variável sem especificar seu tipo
var name = 'Voyager I';


// //Inferência

var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': 'saturn',
  'url': '//path/to/saturn.jpg'
};


// //controle de fluxo

if (year >= 2001) {
  print('21st century');
} else if (year >= 1901) {
  print('20th century');
}

for (var object in flybyObjects) {
  print(object);
}

for (int month = 1; month <= 12; month++) {
  print(month);
}

while (year < 2016) {
  year += 1;
}


// //Funções

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(20);


// //Tratamento de exceções

try {
  for (var object in flybyObjects) {
    var description = await File('$object.txt').readAsString();
    print(description);
  }
} on IOException catch (e) {
  print('Could not describe object: $e');
} finally {
  flybyObjects.clear();
}