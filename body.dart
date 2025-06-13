import 'dart:io';

void main() {
  //object
  List<Map<String, dynamic>> AllServices = [
    {
      "service": "haircut",
      "cost": "5000 - 15000",
      "haircuts": ["feather", "layer", "v", "butterfly"],
    },
    {
      "service": "Makeup",
      "cost": "15000 - 40,000",
      "Type of makeup": ["glowy", "glamourous", "soft", "bridal makeup"],
    },
    {"service": "nail art", "cost": "1000 - 10,000"},
    {"service": "meny pedy", "cost": "4000 - 10,000"},
    {"service": "hairCare", "cost": "20,000 - 60,000"},
    {
      "service": "Facial",
      "cost": "5000 - 30,000",
      "Facials": ["herbal", "gold", "red light", "hydra", "lifting massage"],
    },
  ];
  for (var data in AllServices) {
    Services services = Services(name: data["service"], cost: data["cost"]);
    services.showServices();
  }
}

class Services {
  //attributes
  String? name;
  String? cost;
  //constructor
  Services({required this.name, required this.cost});
  //methods
  void showServices() {
    print("Name:$name");
    print("Cost:$cost");
  }
}
