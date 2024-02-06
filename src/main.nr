use dep::std;
mod new_module;
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


// References /Pointer
// fn main() {
//     let mut x = 2;
//     let mut y = 4;
//     multiplyBy2(&mut x);
//     multiplyBy2(&mut y);
//     std::println(x);
//     std::println(y);
// }

// fn multiplyBy2(x: &mut u8){
//     *x  = *x * 2;
// }


// Function Types
// fn assert_returns_100(f: fn() -> Field){
//     assert(f() == 100);
// }

// fn main() {
//     assert_returns_100(|| 100);
//     assert_returns_100(|| 150);
// }

// Methods

// struct MyStruct {
//     foo: Field,
//     bar: Field,
// }

// impl MyStruct{
//     fn new(foo: Field) -> MyStruct {
//         MyStruct {
//             foo,
//             bar: 2,
//         }
//     }

//     fn sum(self) -> Field {
//         self.foo + self.bar
//     }
// }

// fn main() {
//     let s = MyStruct::new(40);
//     assert(s.sum() == 42);
// }


// Lambdas
// fn main() {
// let add_50 = |a: u8| a + 50;
// std::println(add_50(50))
// }


// Control Flow
// fn main(){
//     let arr = [4, 5, 8, 7, 1];
//     let arrLength = arr.len();
//     std::println("looping");
//     for i in 0 .. arrLength {
//         // How do I cast it directly? Without creating a dummy variable

//         let curr: u8 = arr[i];
//         if(curr == 8){
//         std::println("I am eight");
//         }
//         else {
//             std::println("I am not eight")

//         }
//         std::println(curr);
//     };
//     std::println("Done");
// }

// Converting u72 to [u8; 8]

// fn main(num: u72) -> pub [u8; 8] {
//     let mut out: [u8; 8] = [0; 8];
//     for i in 0..8 {
//         out[i] = (num >> (56 - (i * 8))) as u8;
//     }
//     std::println(out);
//     out
// }

// unconstrained fn u72_to_u8(num: u72) -> [u8; 8] {
//     let mut out: [u8; 8] = [0; 8];
//     for i in 0..8 {
//         out[i] = (num >> (56 - (i * 8))) as u8;
//     }
//     out
// }

// fn main() {
//     let a: [u8; 8] = [255, 255, 255, 255, 255, 255, 255, 255];
//      let mut reconstructed_num: u72 = 0;
//     for i in 0..8 {
//         reconstructed_num += (a[i] as u72 << (56 - (8 * i)));
//     }
//     std::println(reconstructed_num)
// }


// fn main() -> pub Field {
//     let x = 3;
//     // helper(x);
//     x // x is still 3
// }

// fn helper(mut x: i32) {
//     x = 4;
// }


//LAMBDAS

// fn main() {
//     let anotherVariable = 21;
//     let coolFunction = || {
//         let first = 44;
//         let second = 2;
//         (first * second) + anotherVariable as u8
//     };

//     std::println(coolFunction())

// }

// This fails. Closure issues
// fn foo(f: fn () -> Field) -> Field {
//  let result = f();
//  result
// }

// fn main() {
//   let (x, y) = (50, 50);
//   assert(foo(|| x + y) == 100); // error :(
// }


// This solves closure issues
// fn foo<Env>(f: fn[Env]() -> Field) -> Field {
//  f()
// }

// fn main() {
//   let (x, y) = (50, 50);
//   assert(foo(|| x + y) == 100); // compiles fine
//   assert(foo(|| 60) == 60);     // compiles fine
// }


// Testing nargo execute
// fn main() -> pub [Field; 8] {
//     let x = 5;
//     let mut out: [Field; 8] = [0; 8];
//     {
//         let x = x * 2;
//         assert (x == 10);
//     }

//     assert (x == 5);
//     for i in 0..8 {
//         out[i] = x + i;
//     }
//     out
// }


struct Person {
    age : u8,
    height : u8,
}

struct anotherStruct {
    y: u8,
    x: u8,
}

struct fooStruct {
    my_struct: anotherStruct,
    foo: u8,
}

// fn main(age : u8, height : u8) {
//     let person = Person { age : age, height : height };
//     std::println(person);
//     std::println(age + height);
//     std::println("Hello world!");

//     let i: u8 = 24;
//     let j: u8 = 22;
//     let x: u8 = 4;
//     let y: u8 =  2;
//       let fmt_str = f"i: {i}, j: {j}";
//   std::println(fmt_str);

//   let s = anotherStruct { y: x, x: y };
//   std::println(s);

//   std::println(f"i: {i}, s: {s}");

//   std::println(x);
//   std::println([x, y]);

//   let foo = fooStruct { my_struct: s, foo: 15 };
//   std::println(f"s: {s}, foo: {foo}");

//   std::println(15);       // prints 0x0f, implicit Field
// //   std::println(-1 as u8); // prints 255
//   std::println(-1 as i8); // prints -1


//   let result = new_module::from_module(2, 4);
//   std::println(f"result: {result}")
// }

fn main() -> pub u16 {
  let result = new_module::from_module(2, 4) as u16;
  std::println(f"result: {result}");
  result
}

