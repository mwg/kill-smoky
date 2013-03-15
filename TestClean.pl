#!/opt/local/bin/perl

$content = "use 'git clean -d -x -f' to remove untracked files, including directories\n";

for($count = 0; $count < 10; $count++){

    `mkdir dir_$count`;
    `echo $content > file_$count.txt`;
    `cp file_$count.txt dir_$count`;
}

`echo $content >> WorkMarkReadMe.txt`;
print $content;