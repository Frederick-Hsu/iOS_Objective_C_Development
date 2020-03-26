## Objective-C programming on Ubuntu Linux platform, with GCC

### How to build the Objective-C program with GCC?

####- Step 1: Install the GNUStep dev. environment in Ubuntu
run the following command in the bash: 
$ sudo apt-get --fix-missing install gobjc gnustep gnustep-devel

####- Step 2: Build the Objective-C code
run the following command in the bash, just take the code file "HelloWorld.m" as an example
$ gcc \`gnustep-config \--objc-flags` -Wl,\--no-as-needed -lobjc -lgnustep-base HelloWorld.m -o HelloWorld

####- Step 3: Run your Objective-C executable
if no error appears in step 2, an executable file will be generated, run it in the bash like this:
$ ./HelloWorld