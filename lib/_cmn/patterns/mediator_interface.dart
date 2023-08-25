abstract class MediatorInterface<T> {
  void onNotify(MediatorItem<T> sender);
}

abstract class MediatorItem<T> extends MediatorInterface<T> {
  T    get getValue;
  bool get isSelected;
}

class Mediator<T> {
  Mediator(this._mediator);

  final MediatorInterface<T> _mediator;
  final List<MediatorItem<T>> _items = [];

  void register(MediatorItem<T> item) {
    _items.add(item);
  }

  void notifyOthers(MediatorItem<T> sender) {
    for (var item in _items) {
      if (item != sender) {
        item.onNotify(sender);
      }
    }

    _mediator.onNotify(sender);
  }
}
