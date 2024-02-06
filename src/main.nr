use dep::std;

//---------------------------------------------------
// Basics
// --------------------------------------------------

// fn main(x: Field, y: pub Field) {
//     assert(x != y);
// }

// #[test]
// fn test_main() {
//     main(1, 2);

//     // Uncomment to make test fail
//     main(1, 4);
// }

// #[test]
// fn test_fail() {
//     main(1, 2);

//     // Uncomment to make test fail
//     main(1, 4);
// }

// fn add(x: u64, y: u64) -> u64 {
//     x + y
// }

// #[test]
// fn test_add() {
//     assert(add(2, 2) == 4);
//     assert(add(4, 2) == 6);
//     assert(add(0, 1) == 1);
//     assert(add(1, 2) == 3
//     );
// }

// #[test(should_fail_with = "Incorrect Number")]
// fn test_add_fail() {
//     assert(add(2, 3) == 8, "Incorrect Number");
// }

// fn main(x: u8, y: u8){
//     let z = x + y;
// }

// fn main() {
//     let x: i8 = -118;
//     let y: i8 = -11;
//     std::wrapping_add(x , y);
// }

// fn main() {
//     let t = true;
//     let f: bool = false;
// }

//---------------------------------------------------
// STRINGS
// --------------------------------------------------


// fn main(message: pub str<11>, hex_as_string: str<4>){
//     std::println(message);
//     assert(message == "hello world", "String is not hello world");
//     assert(hex_as_string == "0x41", "Hex is not 41");
// }


// fn main() {
//     let message = "hello world \nHow are you today";
//     let message_bytes = message.as_bytes();
//     let mut message_vec = message.as_bytes_vec();
//     std::println(message);
//     std::println(message_bytes);
//     // std::println(message_vec);
//     assert(message_bytes.len() == 11);
//     assert(message_bytes[0] == 104);
//     assert(message_bytes[0] == message_vec.get(0));
// }


// fn main() {
//     let s = r"What's your name";
//     let s = r####"One "#, Two "##, Three "### Four "####;

//     let myString = r#"Simon says "hello world""#;
//     std::println(s);
//     std::println(myString);
// }


//-----------------------
// Arrays
// ------------------------



// fn main(x: bool, y: bool) {
//     let my_arr = [x, y];
//     let your_arr: [bool; 2] = [x, y];
//     std::println(my_arr); // [0xff, 0x01]
//     std::println(your_arr) // [0xff, 0x01]
// }

// fn main() {
//     let mut arr = [1, 2, 3, 4, 5];
//     assert(arr[0] == 1);

//     arr[0] = 42;
//     assert(arr[0] == 42);
// }

// fn main() {
//     let mut arr: [Field; 32] = [1; 32];
//     arr[20] = 10;
//     arr[1] = 20;
//     std::println(arr);
//     let sl = arr.as_slice();
//     std::println(sl)
// }

// fn main() {
//     let mut arr: [Field; 31] = [1; 31];
//     assert(arr.len() == 31);
//     std::println(arr.len());
//     let mut arr2 = [5, 3, 1, 5, 2, 1, 8, 8, 2, 15, 16];
//     let sortedArr2 = arr2.sort();
//     std::println(sortedArr2);
//     let sortedArr3 = arr2.sort_via(|a, b| b < a);
//     std::println(sortedArr3)
// }


// Sort Via
// Does not work unless you cast the values
// Location: https://noir-lang.org/docs/noir/syntax/data_types/arrays
// fn main() {
//     let arr4 = [42, 32];
//     let sorted_ascending = arr4.sort_via(|a, b| a < b);
//     assert(sorted_ascending == [32, 42]); // verifies

//     let sorted_descending = arr4.sort_via(|a, b| a > b);
//     assert(sorted_descending == [32, 42]); // does not verify
// }

// Map
// fn main() {
//     let a: [u8; 3] = [1, 2, 3];
//     let b = a.map(|a| a * 4);
//     std::println(b);
// }


// Fold
// Does not work.
// Location: https://noir-lang.org/docs/noir/syntax/data_types/arrays
// fn main() {
//      let arr = [2, 2, 2, 2, 2];
//     let folded = arr.fold(0, |a, b| a + b);
//     // assert(folded == 10);
//     std::println(arr);

// }

// fn main() {
//       let arr: [u8] = [2, 2, 2, 2, 2];
//     let reduced = arr.reduce(|a, b| a + b);
//     assert(reduced == 10);
//     std::println(reduced)
// }

use dep::std::collections::vec::Vec;

// Vectors
// fn main() {

// let mut vector: Vec<Field> = Vec::new();
// for i in 0..5 {
//     vector.push(i);
// }
// std::println(vector);
// assert(vector.len() == 5);
// }

// Tuples
// fn main() {
//     let newTupe: (u8, u8, Field) = (100, -100, 1000);
//     let (first, second, _) = newTupe;
//     std::println(first)   ;
//     std::println(second) ;
//     let another = newTupe.2;
//     std::println(another)
// }

//Structs
// struct Animal {
//     hands: Field,
//     legs: Field,
//     eyes: u8,
// }

// fn main() {
//     let legs = 4;

//     let dog = Animal {
//         eyes: 2,
//         legs,
//         hands: 4
//     };
//     let two = dog.eyes;
//     std::println(two);
//     let Animal {hands, legs: feet, eyes} = get_lion();
//     std::println(hands);
//     std::println(feet);
//     std::println(eyes);
// }
//     fn get_lion() -> Animal {
//         let lion = Animal {
//             legs: 4,
//             eyes: 2,
//             hands: 2
//         };
//         lion
//     }


// References

