solitaire_cipher

This is an implementation of the Solitaire cipher, from Neal Stephenson's 
Cryptonomicon.  

Essentially, run 
./bin/cipher -e 'string I want to encrypt'
to encrypt a string
or
./bin/cipher -d 'string I want to unencrypt'
to unencrypt a string

here are a couple of example runs, pasted from the command line:

master...origin/master ~/code/solitaire_cipher :./bin/cipher 
USAGE:  ./bin/cipher [-d or -e] 'message'
master...origin/master ~/code/solitaire_cipher :./bin/cipher -d "hello"
DHBNG
master...origin/master ~/code/solitaire_cipher :./bin/cipher -e "hello"
LBVJW
master...origin/master ~/code/solitaire_cipher :./bin/cipher -d "lbvjw"
HELLO
master...origin/master ~/code/solitaire_cipher :
