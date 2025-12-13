/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/index/createAndUseCounter
 * @param initial `i32`
 * @returns `i32`
 */
export declare function createAndUseCounter(initial: number): number;
/**
 * assembly/index/createPinnedCounter
 * @param initial `i32`
 * @returns `assembly/index/Counter`
 */
export declare function createPinnedCounter(initial: number): __Internref4;
/**
 * assembly/index/forceGC
 */
export declare function forceGC(): void;
/**
 * assembly/index/createArray
 * @param size `i32`
 * @returns `~lib/typedarray/Int32Array`
 */
export declare function createArray(size: number): Int32Array;
/**
 * assembly/index/sumArray
 * @param arr `~lib/typedarray/Int32Array`
 * @returns `i32`
 */
export declare function sumArray(arr: Int32Array): number;
/** assembly/index/Counter */
declare class __Internref4 extends Number {
  private __nominal4: symbol;
  private __nominal0: symbol;
}
