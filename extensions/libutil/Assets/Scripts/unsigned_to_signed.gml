/// unsigned_to_signed(value, wordsize)

var v = argument0, s = argument1, p = 256 << ((s - 1)<<3);
return (v&(p - 1)) - (((v>>((s<<3) - 1))&1) * p);
