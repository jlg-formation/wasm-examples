// String manipulation functions

// Creates a greeting from a name
export function greet(name: string): string {
  return "Hello, " + name + "!";
}

// Reverses a string
export function reverse(input: string): string {
  let result = "";
  for (let i = input.length - 1; i >= 0; i--) {
    result += input.charAt(i);
  }
  return result;
}

// Returns the length of a string
export function getLength(input: string): i32 {
  return input.length;
}
