#What is this

This is a copy of the [Stacks Project repository](https://github.com/stacks/stacks-project).
There are some files with math notes.

#How to use

Make a clone of repo in your computer so that you have all the files.
Then you can edit and compile. The ``documentation`` directory contains
the original documentation files.

#How to compile

To compile just do, for example

``latexmk -pdf complex-geometry.tex``

Or

``latexmk -pdf -pvc complex-geometry.tex``

for continuous compilation.


Ideally we would use ``make`` as in

``make complex-geometry.pdf``

but for some reason this isn't working great lately.
Official Stacks Project repo uses a python script to compile the whole book. 
I didn't manage to set that working (an attempt is at ``scripts`` directory) 
but feel free to try.

This works:

``make clean``

to delete all the byproducts of compilation (inclding pdf).

#How I write in latex

1. “The seminal work on the subject”: [Gilles Castel’s blog](https://castel.dev/post/lecture-notes-1/)
2. Tutorial: [ejmastnak](https://ejmastnak.com/tutorials/vim-latex/intro/)

#Other links

3. [Google Chrome extension](https://chromewebstore.google.com/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en&pli=1) to facilitate navigation:
4. PDF viewer: [Sioyek](https://sioyek.info/)
5. Shell for Mac OS: [Oh My SSH](https://ohmyz.sh/)
