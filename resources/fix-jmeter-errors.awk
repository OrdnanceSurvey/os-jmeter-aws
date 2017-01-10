BEGIN {
	FS=",";
	OFS=",";
}

($4 ~ /[0-9]+/) || ($4 ~ /responseCode/) {
  print $0
}

($4 !~ /[0-9]+/) && ($4 !~ /responseCode/) {
  if (length($4) > 0) {
    print $1,$2,$3,"500",$5,$6,$7,$8,$9,$10,$11,$12,$13
  }
}
