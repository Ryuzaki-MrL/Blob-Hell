/// get_datestamp(JDN)

var J = argument0;
var f = J + 1401 + ((((4 * J + 274277) div 146097) * 3) >> 2) - 38;
var e = 4 * f + 3;
var g = ((e mod 1461) >> 2);
var h = 5 * g + 2;

var D = ((h mod 153) div 5) + 1;
var M = (h div 153 + 2) mod 12 + 1;
var Y = (e div 1461) - 4716 + ((12 + 2 - M) div 12);

return (string_add_zeroes(Y, 4) + "-" + string_add_zeroes(M, 2) + "-" + string_add_zeroes(D, 2));
