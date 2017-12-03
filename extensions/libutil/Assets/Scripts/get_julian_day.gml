/// get_julian_day(year, month, day)

var a = (14 - argument1) div 12;
var Y = argument0 + 4800 - a;
var m = argument1 + 12*a - 3;

return (argument2) + ((153*m + 2) div 5) + 365*Y + (Y >> 2) - (Y div 100) + (Y div 400) - 32045;
