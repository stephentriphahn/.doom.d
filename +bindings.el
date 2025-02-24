;;; +bindings.el -*- lexical-binding: t; -*-

;; Key binding guide
;; https://discourse.doomemacs.org/t/how-to-re-bind-keys/
;; NOTE: use `map!' macro for convienience
;;
;; Bind key onto Evil Normal state
;; (map! :after evil
;;       :map evil-normal-state-map
;;       "/" #'+default/search-buffer)

;; ------------------------------------------------
;; Key binding vars

;; fd as Esc key binding
;; https://discourse.doomemacs.org/t/typing-jk-deletes-j-and-returns-to-normal-mode/59/7
(after! evil-escape
  (setq evil-escape-key-sequence "fd"))

;; https://discourse.doomemacs.org/t/what-are-leader-and-localleader-keys/153
;; Doom Defaults: `SPC' leader key, `SPC m' local leader
;; Practicalli: Set local leader to `,'
(setq doom-localleader-key ",")
;; ------------------------------------------------


;; ------------------------------------------------
;; Over-ride or add to Doom Emacs default key bindings

(map! :leader
      "SPC" nil
      :desc "M-x" "SPC" #'execute-extended-command)

(map! :leader
      :desc "yank from killring" "r" #'consult-yank-from-kill-ring)

;; Buffer customisations
;; (map! :leader
;;          "TAB" nil
;;          :desc "Last Buffer" "TAB" #'evil-switch-to-windows-last-buffer)

;; Replace Doom `/' highlight with buffer-search
;; (map! :after evil
;;       :map evil-normal-state-map
;;       "/" #'+default/search-buffer)

;; (map! :leader
;;       (:prefix "b"
;;        :desc "Dashboard" "h" #'+doom-dashboard/open
;;        :desc "Toggle Last" "TAB" #'evil-switch-to-windows-last-buffer))


;; Treemacs
;; Toggle treemacs project browser from project menu
;; (map! :leader
;;       (:prefix "p"
;;        "t" nil  ; disable project todos key binding
;;        :desc "Project browser" "t" #'+treemacs/toggle))


;; Change SPC g s to call Magit Status, rather than stage hunk at point
;; (map! :leader
;;       (:prefix "g"
;;        :desc "" "s" nil  ; remove existing binding
;;        :desc "Magit Status" "s" #'magit-status))

;; Diff of files
;; (map! :leader
;;       (:prefix "f"
;;        :desc "" "d" nil  ; remove existing binding
;;        (:prefix ("d" . "diff")
;;         :desc "3 files" "3" #'ediff3
;;         :desc "ediff" "d" #'diff
;;         :desc "ediff" "e" #'ediff
;;         :desc "version" "r" #'vc-root-diff
;;         :desc "version" "v" #'vc-ediff)))

;; Format
;; (map! :leader
;;       (:prefix ("=" . "format")
;;        :desc "buffer" "=" #'+format/buffer
;;        :desc "buffer" "b" #'+format/buffer
;;        :desc "region" "r" #'+format/region
;;        :desc "whitespace" "w" #'delete-trailing-whitespace))


;; ------------------------------------------------
;; Experiments
;; Use `,,` to close a commit message and `,k' to cancel
;; Doom maps `ZZ` to commit, `ZQ' to quit
;; (map! :after magit
;;       :map text-mode-map
;;       :localleader
;;       "," #'with-editor-finish
;;       "k" #'with-editor-cancel)
