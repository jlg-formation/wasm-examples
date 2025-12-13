// Fibonacci function to demonstrate optimization impact
// The optimized version will inline and simplify this code

export function fibonacci(n: i32): i32 {
  if (n <= 1) return n;

  let a: i32 = 0;
  let b: i32 = 1;

  for (let i: i32 = 2; i <= n; i++) {
    let temp = a + b;
    a = b;
    b = temp;
  }

  return b;
}

// Simple addition to show minimal optimized output
export function add(a: i32, b: i32): i32 {
  return a + b;
}
