actor Utils {
  var counter : Nat = 0;

  public shared func multiply(n : Nat, m : Nat) : async Nat {
    return n * m;
  };

  public shared func volume(n : Nat) : async Nat {
    return n ** 3;
  };

  public shared func hours_to_minutes(n : Nat) : async Nat {
    return n * 60;
  };

  public shared func set_counter(n : Nat) : async () {
    counter := n;
  };

  public shared query func get_counter() : async Nat {
    return counter;
  };

  public shared func test_divide(n: Nat, m : Nat) : async Bool {
    return n % m == 0;
  };

  public shared func is_even(n : Nat) : async Bool {
    return n % 2 == 0;
  };
}