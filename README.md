# xmi-validator
Validator for models and profiles specified in OMG XML Metadata Interchange (XMI)

More information about building (including a Docker file) is in the works.  
For the time being under linux and MacOS, if you a little bit comfortable with Common Lisp:

1. Install [sbcl](http://www.sbcl.org/). 

2. Install [quicklisp](https://www.quicklisp.org/beta/). 

3. Add the following to `~/.config/common-lisp/source-registry.conf`, where "Documents/git/xmi-validator/src"
is replaced with the src directory under which you cloned/forked the repository. 

``` 
(:source-registry
  (:tree (:home "Documents/git/xmi-validator/src"))
  :inherit-configuration)
```  

4. Start lisp and load scl/load.lisp. With a little luck, the code should compile, load, and 
start the server at localhost:3330. 
