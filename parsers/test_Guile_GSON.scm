#!/usr/bin/env -S guile -s
!#

(use-modules (gson))


(define filename (cadr (command-line)))

(catch GSON-JSON-INVALID
  (lambda _ (json-file->scm filename))
  (lambda _ (exit 1)))

(exit 0)
