# <a id="questions"> 🙋 Questions </a>
1. How much is the current memory capacity of a canister? <br />
   <i> Since 2022-11-21 can be expanded to 48 Gb https://dashboard.internetcomputer.org/proposal/92573 </i>
2. What is the issue with the following code sample?
    ```
    actor {
      let counter : Nat = 0;
      public func increment_counter() : async () {
        counter := counter + 1;
      };
    }
    ```

    <i><b>let</b> defines constants (immutable variables), so "counter" should be declared as <b>var</b></i>
3. What is the issue with the following code sample?
    ```
    actor {
      var message : Text = 0;
    
      public query func change_message(new_message : Text) : async () {
        message := new_message;
        return;
      };
      
      public query func see_message() : async Text {
        return(message);
      };
    }
    ```

   <i>"message" declared as Text, but initialised as Int, use empty str as initial value <br /> ```var message : Text = "";```</i>

4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer. <br />
   <i>Actors can have public and private functions. <br /> Private(local) can be used for internal usage without async (depends on purpose). <br /> But public(shared) functions due to Network latency can be only <b>async</b>.</i>
