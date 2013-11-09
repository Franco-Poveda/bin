#!/bin/bash
LAST=";"
test "$1" = "-n" && LAST="s/\n//"
(test -n "$*" && echo "$@"  || cat - ) |
sed     -e 's/:)/☺/g' \
        -e 's/:(/☹/g' \
	-e 's,meh,¯\_(ツ)_/¯,g' \
	-e 's/[.][.][.]/…/g' \
	-e 's/delta/∆/g' \
	-e 's/\bsum/∑/g' \
	-e 's/integral/∫/g' \
	-e 's/micro/µ/g' \
	-e 's/PI/¶/g' \
	-e 's/PHI/ø/g' \
	-e 's/ae/æ/g' \
	-e 's/sun/☼/g' \
	-e 's/moon/☽/g' \
	-e 's/\boo\b/∞/g' \
	-e 's/peace/☮/g' \
	-e 's/yinyan/☯/g' \
	-e 's/\bmale/♂/g' \
	-e 's/\bfemale/♀/g' \
	-e 's/check/✔/g' \
	-e 's/danger/☠/g' \
	-e 's/percent/%/g' \
	-e 's/!=/≠/g' \
	-e 's/~=/≈/g' \
	-e 's/<=/≤/g' \
	-e 's/>=/≥/g' \
	-e 's/\bphone/☎/g' \
	-e 's/\bplane/✈/g' \
	-e 's/->/→/g' \
	-e 's/<-/←/g' \
	-e 's/ack/␆/g' \
	-e 's/nak/␕/g' \
	-e 's/syn/␖/g' \
	-e 's/eot/␄/g' \
	-e 's/heart/♥/g' \
	-e 's/(1)/❶/g' \
	-e 's/(2)/❷/g' \
	-e 's/(3)/❸/g' \
	-e 's/(4)/❹/g' \
	-e 's/(5)/❺/g' \
	-e 's/(6)/❻/g' \
	-e 's/(7)/❼/g' \
	-e 's/(8)/❽/g' \
	-e 's/(9)/❾/g' \
	-e 's/(10)/❿/g' \
	-e 's/=>/➠/g' \
	-e 's/power/⚡/g' \
	-e 's/flower/⚘/g' \
	-e 's/nuclear/⚛/g' \
	-e 's/sex/⚤/g' \
	-e 's/music-1_4/♩/g' \
	-e 's/music-1_8/♫/g' \
	-e 's/music-1_16/♬/g' \
	-e 's/[-]/—/g' \
	-e 's/\[0\]/⁰/g' \
	-e 's/\[1\]/¹/g' \
	-e 's/\[2\]/²/g' \
	-e 's/\[3\]/³/g' \
	-e 's/\[4\]/⁴/g' \
	-e 's/\[5\]/⁵/g' \
	-e 's/\[6\]/⁶/g' \
	-e 's/\[7\]/⁷/g' \
	-e 's/\[8\]/⁸/g' \
	-e 's/\[9\]/⁹/g' \
	-e 's,1/2,½,g' \
	-e 's,1/3,⅓,g' \
	-e 's,1/4,¼,g' \
	-e 's,1/5,⅕,g' \
	-e "$LAST"
