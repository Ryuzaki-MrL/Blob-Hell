/// round_binary(value)

var v = argument0 - 1;

for (var i = 1; i < 32; i = i<<1) {
    v |= v >> i;
}

return ++v;
