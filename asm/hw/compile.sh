# 1. Assemble the NASM source into a 64-bit ELF object file
nasm -f elf64 hello.asm -o hello.o

# 2. Link the object file into an executable
ld hello.o -o hello

# 3. Run the program
./hello

