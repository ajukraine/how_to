fd -e cs -X wc -l | awk '/cs/ { print $1 }' | datamash -s --header-out mean 1 median 1 q1 1 q3 1 perc:90 1 mode 1

# 'fd -e cs' finds all files with extension '.cs' (C#)
# '-X wc -l' runs 'wc -l' for all found files
# 'awk '/cs/ { print $1 } ' takes only lines with 'cs' in it and prints the number of LOC (1st column)
# 'datamash' calcultes stats based on prev pipeline input
