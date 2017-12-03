/// array(value0, value1, ...)

var a;

a[argument_count-1] = 0;
for (var i = 0; i < argument_count; i++) a[i] = argument[i];

return a;
