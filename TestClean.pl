#!/opt/local/bin/perl

$content = "use git checkout to delete these files\n";

for($count = 0; $count < 1; $count++){

    `mkdir dir_$count`;
    `echo $content > file_$count.txt`;
    `cp file_$count.txt dir_$count`;
}

print $content;