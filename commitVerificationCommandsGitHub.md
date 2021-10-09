## Install GPG
`sudo pacman -S gnupg`

## Generate GPG Key
`gpg --full-generate-key`
(4096 Bits)

## List Keys
`gpg --list-secret-keys --keyid-format=long` 

```
$ gpg --list-secret-keys --keyid-format=long
/Users/hubot/.gnupg/secring.gpg
------------------------------------
sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
uid                          Hubot 
ssb   4096R/42B317FD4BA89E7A 2016-03-10
```
From the list of GPG keys, copy the long form of the GPG key ID you'd like to use. In this example, the GPG key ID is 3AA5C34371567BD2:

## Export Key

`gpg --armor --export 3AA5C34371567BD2`

## Add key to github
Copy your GPG key, beginning with -----BEGIN PGP PUBLIC KEY BLOCK----- and ending with -----END PGP PUBLIC KEY BLOCK-----.

[Add the GPG key to your GitHub account.](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-new-gpg-key-to-your-github-account) 

## Git config
Finally the git configuration 

`git config --global gpg.program gpg2`   
`git config --global commit.gpgsign true`   
`git config --global user.signinKey <YOURKEY>`   
