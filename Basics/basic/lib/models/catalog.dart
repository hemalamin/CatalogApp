class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg"),
    Item(
        id: 1,
        name: "iphone",
        discription: "Apple iphone ",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.pixabay.com/photo/2022/07/06/12/58/woman-7305088__340.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String discription;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.discription,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) => Item(
        id: map["id"],
        name: map["name"],
        discription: map["discription"],
        price: map["price"],
        color: map["color"],
        image: map["image"],
      );

  toMap() => {
        "id": id,
        "name": name,
        "discription": discription,
        "price": price,
        "color": color,
        "image": image
      };
}
