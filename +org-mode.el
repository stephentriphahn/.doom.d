;;; +org-mode.el -*- lexical-binding: t; -*-

;; ---------------------------------------
;; Org-mode configuration
;; - configuration being tested, may need further adjusting for Doom


(after! org
  (setq
   ;; Default location of org files
   org-directory "~/org/"
   ;; Define the location of the file to hold tasks
   org-default-notes-file "~/org/todo-list.org"

   ;; Define stages for todo tasks
   org-todo-keywords '((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED"))

   ;; When item enters DONE, add a CLOSED: property with current date-time stamp
   org-log-done 'time

   ;; Make TODO states easier to distinguish by using different colours
   ;; Using X11 colour names from: https://en.wikipedia.org/wiki/Web_colors
   hl-todo-keyword-faces
   '(("TODO" . "Khaki")
     ("DOING" . "Aquamarine")
     ("BLOCKED" . "Salmon")
     ("REVIEW" . "Teal")
     ("DONE" . "ForestGreen")
     ("ARCHIVED" .  "SlateBlue"))

   org-todo-keyword-faces
   '(("TODO" . "Khaki")
     ("DOING" . "Aquamarine")
     ("BLOCKED" . "Salmon")
     ("REVIEW" . "Teal")
     ("DONE" . "ForestGreen")
     ("ARCHIVED" .  "SlateBlue"))
   ))


;; customize org-mode's checkboxes with unicode symbols
(add-hook! org-mode
  (lambda ()
    "Beautify Org Checkbox Symbol"
    (push '("[ ]" . "☐") prettify-symbols-alist)
    (push '("[X]" . "☑" ) prettify-symbols-alist)
    (push '("[-]" . "❍" ) prettify-symbols-alist)
    (prettify-symbols-mode)))

;; End of Org-mode Configuration
;; ---------------------------------------
