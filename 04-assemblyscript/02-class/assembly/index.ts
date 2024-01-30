class Vector {
  constructor(public x: f64, public y: f64) {}

  module(): f64 {
    return Math.sqrt(this.x * this.x + this.y * this.y);
  }
}

export function module(x: f64, y: f64): f64 {
  const v = new Vector(x, y);
  const result: f64 = v.module();
  return result;
}
