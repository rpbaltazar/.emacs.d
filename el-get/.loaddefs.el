;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (22698 26939
;;;;;;  0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (22698 26939 0 0))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC SYNC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The property list may include the keyword
`:bundle-sync' with a value of either `t' or `nil' to request that
`el-get-bundle' invoke `el-get' synchronously (respectively asynchronously).
The keyword `:bundle-async' is the inverse of `:bundle-sync'.
\(Note that the request to run el-get synchronously may not be respected in all
circumstances: see the definition of `el-get-bundle-el-get' for details.)
The FORM after the property list is treated as initialization code,
which is actually an `:after' property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (22698 26939 0 0))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (22698 26939 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "mmm-mode/mmm-erb" "mmm-mode/mmm-erb.el" (22698
;;;;;;  26962 0 0))
;;; Generated autoloads from mmm-mode/mmm-erb.el

(autoload 'html-erb-mode "mmm-mode/mmm-erb" "\


\(fn)" t nil)

(autoload 'nxml-web-mode "mmm-mode/mmm-erb" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "mmm-mode/mmm-vars" "mmm-mode/mmm-vars.el"
;;;;;;  (22698 26962 0 0))
;;; Generated autoloads from mmm-mode/mmm-vars.el

(autoload 'mmm-add-classes "mmm-mode/mmm-vars" "\
Add the submode classes CLASSES to `mmm-classes-alist'.

\(fn CLASSES)" nil nil)

;;;***

;;;### (autoloads nil "web-mode/web-mode" "web-mode/web-mode.el"
;;;;;;  (22698 27018 0 0))
;;; Generated autoloads from web-mode/web-mode.el

(autoload 'web-mode "web-mode/web-mode" "\
Major mode for editing web templates.

\(fn)" t nil)

;;;***

<<<<<<< Updated upstream
;;;### (autoloads nil "yaml-mode/yaml-mode" "yaml-mode/yaml-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from yaml-mode/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode/yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode/yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode/yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yaml-mode/yaml-mode" '("yaml-")))

;;;***

;;;### (autoloads nil nil ("el-get/el-get-install.el" "mmm-mode/mmm-defaults.el")
;;;;;;  (0 0 0 0))
=======
;;;### (autoloads nil nil ("el-get/el-get-autoloading.el" "el-get/el-get-build.el"
;;;;;;  "el-get/el-get-byte-compile.el" "el-get/el-get-core.el" "el-get/el-get-custom.el"
;;;;;;  "el-get/el-get-dependencies.el" "el-get/el-get-install.el"
;;;;;;  "el-get/el-get-methods.el" "el-get/el-get-notify.el" "el-get/el-get-recipes.el"
;;;;;;  "el-get/el-get-status.el" "mmm-mode/mmm-auto.el" "mmm-mode/mmm-class.el"
;;;;;;  "mmm-mode/mmm-cmds.el" "mmm-mode/mmm-compat.el" "mmm-mode/mmm-cweb.el"
;;;;;;  "mmm-mode/mmm-defaults.el" "mmm-mode/mmm-mason.el" "mmm-mode/mmm-mode.el"
;;;;;;  "mmm-mode/mmm-myghty.el" "mmm-mode/mmm-noweb.el" "mmm-mode/mmm-region.el"
;;;;;;  "mmm-mode/mmm-rpm.el" "mmm-mode/mmm-sample.el" "mmm-mode/mmm-univ.el"
;;;;;;  "mmm-mode/mmm-utils.el") (22698 27018 986494 0))
>>>>>>> Stashed changes

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
