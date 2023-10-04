class DataItem {
  final String id;
  final String name;
  final String email;
  final String telephone;
  final String neighborhood;

  DataItem({
    required this.id,
    required this.name,
    required this.email,
    required this.telephone,
    required this.neighborhood,
  });
}




class SessionDataItem {
  final String date;
  final String service;
  final String price;
  final String paymentStatus;
  final String modality;

  SessionDataItem({
    required this.date,
    required this.service,
    required this.price,
    required this.paymentStatus,
    required this.modality,
  });
}
