// Write a program that loops through [1..100]. It should do the following:
// a) If the number is divisible by 3, print “fizz”.
// b) If divisible by 5 print “buzz”.
// c) If divisible by 3 & 5, print “fizzbuzz”.

function printLabels(){
 for(let i=1; i<=100;i++){
  if(i%3 === 0 && i%5 === 0) console.log("fizzbuzz")
  else if(i%5 === 0) console.log("buzz")
  else if(i%3 === 0) console.log("fizz")
 }
}

//printLabels()
// 2) Write a program to reverse a string “abcdef” --> “fedcba” without using the .NET
// reverse() function
// Prompt for the input from console and display the output to the console.

function reverse(string) {
  const chars = string.split('');
  let reversedCharArray = [];
  for(let i=chars.length-1;i>=0;i--){
   reversedCharArray.push(chars[i])
  }
  return reversedCharArray.join('');
}


