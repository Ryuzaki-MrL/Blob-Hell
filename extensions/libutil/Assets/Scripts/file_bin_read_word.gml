/// file_bin_read_word(file, wordsize, bigend)

var file = argument0, size = argument1, bigend = argument2, value = 0, i, b;

for (i = 0; i < size; i++) b[i] = file_bin_read_byte(file);

if (bigend) for (i = 0; i < size; i++) value = value << 8 | b[i];
else for (i = size-1; i>=0; i--) value = value << 8 | b[i];

return value;
