use dep::std;

pub fn from_module(x: Field, y: Field) -> Field {
	let j = y.pow_32(4);
	std::println(f"j: {j}");
	x + j
}