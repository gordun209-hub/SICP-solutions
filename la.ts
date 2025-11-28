function expmod(base: number, exp: number, m: number): number {
    if (exp === 0) {
        return 1;
    } else if (exp % 2 === 0) { // even exponent
        const half = expmod(base, exp / 2, m);
        console.log(half, "half")
        return (half * half) % m;
    } else { // odd exponent
        return (base * expmod(base, exp - 1, m)) % m;
    }
}

// Example usage:
console.log(expmod(3, 5, 7)); // Output: 5
console.log(expmod(2, 13, 100)); // Output: 8192 % 100 = 92

