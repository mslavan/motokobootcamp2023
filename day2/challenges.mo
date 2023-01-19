import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Nat "mo:base/Nat";

actor Utils {
  public query func average_array(array : [Int]) : async Int {
    var sum: Int = 0;
    for (value in array.vals()){
      sum := sum + value;
    };
    return sum / array.size();
  };

  public query func count_character(t : Text, c : Char) : async Nat {
    let ocurrences = Array.filter<Char>(Iter.toArray(t.chars()), func iterC = iterC == c);
    return ocurrences.size();
  };

  public query func factorial(n : Nat) : async Nat {
    return _factorial(n);
  };

  public query func number_of_words(t : Text) : async Nat {
    return Iter.size(Text.split(t, #char ' '));
  };

  public query func find_duplicates(a : [Nat]) : async [Nat] {
    let sortedArray: [Nat] = Array.sort(a, Nat.compare);
    let duplicates: [Nat] = [];
    let prevValue: Nat = sortedArray[0] - 1;

    for (curValue in sortedArray.vals()) {
      if (curValue == prevValue and duplicates) {
        duplicates.push
      }

      prevValue = curValue;
    };
    return duplicates;
  };

  /* extra functions */
  let _factorial = func (n : Nat) : Nat {
    if (n > 1) {
      return n * _factorial(n - 1);
    } else {
      return 1;
    }
  };
}
