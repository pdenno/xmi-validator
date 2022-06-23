# xmi-validator
Validator for models and profiles specified in OMG XML Metadata Interchange (XMI)

More information about building (including a Docker file) is in the works.  
For the time being under linux and MacOS, if you a little bit comfortable with Common Lisp:

1. Install [sbcl](http://www.sbcl.org/). 

2. Install [quicklisp](https://www.quicklisp.org/beta/). 

3. Install xmllint

4. Create the directory `/usr/local/tmp` if it does not already exist.

5. Add the following to `~/.config/common-lisp/source-registry.conf`, where "Documents/git/xmi-validator/src"
is replaced with the src directory under which you cloned/forked the repository. 

``` 
(:source-registry
  (:tree (:home "Documents/git/xmi-validator/src"))
  :inherit-configuration)
```  

6. Start lisp (run `sbcl` in a shell from the `src` directory) and a the lisp prompt, run `(load "load")`. 
With a little luck, the code should compile, load, and start the server and report: 
`Validator available at http://localhost:3330/se-interop/`

BTW: You might want a file `~/.sbclrc` containing at least the line `(declaim (sb-ext:muffle-conditions style-warning))`.
That will reduce the number of useless reports on compilation from sbcl.
