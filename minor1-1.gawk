#!/bin/awk -f
BEGIN { OFS = "\t" }
{if ( NR != 1 ) {
{if ( $1 >= 0 && $1 <= 360 ) {
	print $1 OFS $1
}
else if ( $1 > 360 ) { 
	res1 = $1
	while ( res1 > 360 ) {
		res1 -= 360
	}
	print $1 OFS res1;
}
else if ( $1 < 0 ) {
	res2 = $1
	while ( res2 < 0 ) {
		res2 += 360
	}
	print $1 OFS res2;
}
}
}
}
