class BinarySearchTree<T extends Comparable<T>> {
  BinarySearchTree(T data) : root = Node<T>(data);
  final Node<T> root;

  List<T> get sortedData {
    return root.sortedData;
  }

  BinarySearchTree<T> insert(T data) {
    root.insert(data);
    return this;
  }
}

class Node<T extends Comparable<T>> {
  Node(this.data);
  final T data;
  Node<T>? left;
  Node<T>? right;

  List<T> get sortedData {
    return [
      if (left != null) ...left!.sortedData,
      data,
      if (right != null) ...right!.sortedData
    ];
  }

  Node<T> insert(T data) {
    if (data.compareTo(this.data) <= 0) {
      if (left != null) {
        left!.insert(data);
      } else {
        left = Node<T>(data);
      }
    } else {
      if (right != null) {
        right!.insert(data);
      } else {
        right = Node<T>(data);
      }
    }
    return this;
  }
}
