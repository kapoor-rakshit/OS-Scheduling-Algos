# SOURCE : https://www.tutorialspoint.com/unix/unix-pipes-filters.htm


#a pipe ie a vertical bar (|) on the command line between two commands
#The name "grep" comes from the ed (a Unix line editor) command g/re/p which means “globally search for a regular expression and print all lines containing it”.
#Options
# -v : Prints all lines that do not match pattern.
# -n : Prints the matched line and its line number.
# -l : Prints only the names of files with matching lines.
# -c : Prints only the count of matching lines.
# -i : Matches either upper or lowercase.
# -w : matches by treating the "arg" as a WORD to be searched and not as a SUBSTRING of any word
# ^word : matches lines in file that STARTS with "word"
# word$ : matches lines in file that ENDS with "word"
# --color : highlights the search

grep “fast.*host” index.html         # starts with “fast” and ends with “host” with anything in-between

grep “linux” file*.*                #  all files with file1.txt, file2.txt and along with different extensions too like file1.html, file2.php and so on.

ls -l | grep -i -c "Jul"

grep -w "the" file.txt              #searches the word "the" and echo that line, not work for "there" as it has "the" as SUBSTRING not a word

grep -w "color\|rang\|rangeen" file.txt   #search for more than one keyword

