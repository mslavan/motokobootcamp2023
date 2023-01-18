# <a id="questions"> 🙋 Questions </a>
1. Who controls the ledger canister? <br />
    <i>
        <ul>
            <li>Dev or group of Devs</li>
            <li>another canister</li>
            <li>no controller</li>
        </ul>
    </i>

2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet? <br />
   <i>
    ICScan empty res, but subnet ID is <b>pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe</b> It has 2 controllers from terminal (<b>a3hwk-dyaaa-aaaab-qaa4a-cai</b> and <b>k3f6a-5uxhv-dqjj6-762lc-yazgp-drpws-a35e7-wf27k-ujuio-ye2lh-xqe</b>) <br />
    By morning of 18 it has running 16 nodes.
   </i>
3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power? <br />

   <i>According to https://support.dfinity.org/hc/en-us/articles/4404284534420-What-is-voting-power- <br /> 10 * 1.48 * 1.125 = 16.65</i>

4.  What is wrong with the following code?
    ```
    actor {
      let n : Nat = 50;
      let t : Text = "Hello";
    
      public func convert_to_text(m : Nat) : async Text {
        Nat.toText(m);
      };
    }
    ```
    <i>Nat globally by default is primitive type, for using toText function from Nat we need to import module ```import Nat "mo:base/Nat";```</i>

5.  What is wrong with the following code?

    ```
    actor {
      var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];
    
      public func show_languages(language : Text) : async [var Text] {
        return (languages);
      };
    }
    ```
    <i>Actors should share only immutable states or can return mutable variable values using Freeze (to avoid modifying languages from external places). Simply make languages immutable through let </i>

6. What is wrong with the following code?

    ```
    actor {
      var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];
    
      public func add_language(new_language: Text) : async [Text] {
        languages := Array.append<Text>(languages, [new_language]);
        return (languages);
      };
    }
    ```
   
    should be 
    ```
    import Array "mo:base/Array";

    actor {
      var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];
    
      public func add_language(new_language: Text) : async [Text] {
        languages := Array.append<Text>(languages, [new_language]);
        return (languages);
      };
    }
    ```
    <i> Import Array module and then change returning type function to immutable [Text] </i>
