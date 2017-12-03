/// array_sort(array)

var a = argument0, num = array_length_1d(a), b;
var rght, rend, i, j, m;
b[num] = 0;

for (var k = 1; k < num; k*=2) {
    for (var left = 0; left+k < num; left+=k<<1) {
        rght = left + k;
        rend = rght + k;
        if (rend > num) rend = num;
        m = left; i = left; j = rght;
        while(i < rght && j < rend) {
            if (a[i] <= a[j]) b[m++] = a[i++];
            else b[m++] = a[j++];
        }
        while(i < rght) b[m++] = a[i++];
        while(j < rend) b[m++] = a[j++];
        for (m = left; m < rend; m++) {
            a[@ m] = b[m];
        }
    }
}
