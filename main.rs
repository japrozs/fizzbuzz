fn fizzbuzz(num : u32){
	for i in 0..num{
		if i % 3 == 0 && i % 5 == 0{
			println!("Fizzbuzz")
		}else if i % 3 == 0 {
			println!("Fizz")
		}else if  i % 5 == 0 {
			println!("Buzz")
		}else{
			println!("{}", i);
		}
	}
}

fn main(){
	fizzbuzz(100);
}