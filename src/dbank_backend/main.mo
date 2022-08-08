// import library from Motoko's base library
import Debug "mo:base/Debug";

// class to hold canister(DBank)
actor DBank {
  // Naming convention lowerCamelCase for constants and var
  // UpperCamelCase for type names (including classes or type parameters), actor names, module names.
  var currentValue = 300;
  // := replace value in variable (300 to 100)
  currentValue := 100;

  // use let to create constants (immutable)
  let id = 394290389894;

  // Print in terminal (expects text in quote, cant print Nat or natural numbers which is currentValue)
  // Debug.print("Hello World");
  // Test error:
  // Debug.print(currentValue);

  // To print NAT or natural numbers use Debug.print(debug_show(currentValue))
  // Debug.print(debug_show(currentValue));
  // Debug.print(debug_show(id));

  // create functions
  // private function. Only accessible in this actor since it is inside the actor's curly braces.
  // Add public keyword infront of the function to be accessible outside the actor's curly braces.
  // Add input parameter to the function named amount with data type of Nat.
  public func topUp(amount: Nat) {
    currentValue += amount;
    // print currentValue
    Debug.print(debug_show(currentValue));
  };

  // Withdraw amount from the currentValue
  // Decrease the currentValue by the amount
  public func withdraw(amount: Nat) {
    currentValue -= amount;
    // print currentValue
    Debug.print(debug_show(currentValue));
  };

  // Call the function
  // Call canister's specfic function after 'dfx deploy' with:
  // dfx canister call canisterName FunctionName '("args")'
  // in this case since we have no args in the function, 'dfx canister call dbank_backend topUp'
  // topUp();

  //--------CANDID UI-------------//
  // Find the Candid UI canister identifier associated with the counter using the 'dfx canister id __Candid_UI' command in the CLI.
  // Add the ID to the URL `http://127.0.0.1:8000/?canisterId=<CANDID-UI-CANISTER-IDENTIFIER>`
  // On the website, the canister ID to provide is the program's ID.
  // We can get it with `dfx canister id dbank_backend`.
  // We can see the function and textfield to enter the 'amount' input.
}
