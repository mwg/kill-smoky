#!/opt/local/bin/perl

$content = "use 'git clean -d -x -f' to remove untracked files, including directories\n";

for($count = 0; $count < 10; $count++){

    `mkdir dir_$count`;
    `echo "$content" > file_$count.txt`;
    `cp file_$count.txt dir_$count`;
}

#if next line is uncommented a git checkout is required to bring it back to normal
`echo "$content" >> WorkMarkReadMe.txt`;
print "I made this primarily as a way to test out the ability to clean a working directory out once you've dirties it up with a bunch of files, from a build for example...\n";
print $content;