final Map<String, List<int> Function(int, int)> BuiltInTwoArgs = {
  '+': (prev, last) => [prev + last],
  '-': (prev, last) => [prev - last],
  '*': (prev, last) => [prev * last],
  '/': (prev, last) {
    if (last == 0) {
      throw new Exception('Division by zero');
    }
    return [prev ~/ last];
  },
  'swap': (prev, last) => [last, prev],
  'over': (prev, last) => [prev, last, prev],
};

final Map<String, List<int> Function(int)> BuiltInOneArg = {
  'dup': (last) => [last, last],
  'drop': (_) => [],
};

enum Mode {
  execute,
  name,
  define,
}

class Forth {
  List<int> _stack = [];
  Map<String, List<String>> _definitions = {};
  Mode _mode = Mode.execute;
  String _currentName = '';
  List<String> _currentDef = [];

  List<int> get stack => new List.from(this._stack);

  void evaluate(String instructions) {
    instructions.toLowerCase().split(' ').forEach((token) {
      _process(token);
    });
  }

  void _checkLength(int min) {
    if (this._stack.length < min) {
      throw new Exception('Stack empty');
    }
  }

  void _define(String token) {
    if (token == ';') {
      this._definitions[this._currentName] = this._currentDef;
      this._currentDef = [];
      this._mode = Mode.execute;
    } else {
      this._parse(token);
    }
  }

  void _execute(String token) {
    if (token == ':') {
      this._mode = Mode.name;
    } else if (this._definitions.containsKey(token)) {
      this._definitions[token]!.forEach((innerToken) {
        this._process(innerToken);
      });
    } else if (BuiltInTwoArgs.containsKey(token)) {
      this._checkLength(2);
      int last = this._stack.removeLast();
      int prev = this._stack.removeLast();
      this._stack.addAll(BuiltInTwoArgs[token]!(prev, last));
    } else if (BuiltInOneArg.containsKey(token)) {
      this._checkLength(1);
      int last = this._stack.removeLast();
      this._stack.addAll(BuiltInOneArg[token]!(last));
    } else if (int.tryParse(token) != null) {
      this._stack.add(int.parse(token));
    } else {
      throw new Exception('Unknown command');
    }
  }

  void _name(String token) {
    if (int.tryParse(token) != null) {
      throw new Exception('Invalid definition');
    }
    this._currentName = token;
    this._mode = Mode.define;
  }

  void _parse(String token) {
    if (this._definitions.containsKey(token)) {
      this._definitions[token]!.forEach((innerToken) {
        this._process(innerToken);
      });
    } else {
      this._currentDef.add(token);
    }
  }

  void _process(String token) {
    switch (this._mode) {
      case Mode.execute:
        this._execute(token);
        break;
      case Mode.name:
        this._name(token);
        break;
      case Mode.define:
        this._define(token);
        break;
    }
  }
}
