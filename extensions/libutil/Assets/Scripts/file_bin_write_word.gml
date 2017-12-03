/// file_bin_write_word(file, wordsize, bigend, value)

var file = argument0, size = argument1, bigend = argument2, value = argument3, i, b;

for (i = 0; i < size; i++) {
    b[i] = value & 255;
    value = value >> 8;
}

if (bigend) for (i = size-1; i>=0; i--) file_bin_write_byte(file,b[i]);
else for (i = 0; i < size; i++) file_bin_write_byte(file,b[i]);
