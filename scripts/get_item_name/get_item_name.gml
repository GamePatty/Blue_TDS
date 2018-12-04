///get_item_name(spite index)
str = object_get_name(argument0);
//remove the 1st letter and add the space between the letters
//ex: sFoodCan= s - remove, add space between 'Food Can'
return string_copy(argument0,1,string_length(str));
/*for (var i = 1; i < string_length(str)); ++i) {
    // code here
	new_str += string_char_at()
}