;;; jin-theme.el --- A simple theme                  -*- lexical-binding: t; -*-

;; Copyright (C) 2022  Qiqi Jin

;; Author: Qiqi Jin <ginqi7@gmail.com>
;; Keywords: lisp

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(deftheme jin "A personal light theme.")

;; Red Orange Yellow Green Cyan Blue Purple Gray

;; Background:        Yellow  #fdf6e3
;; Foreground:        Black   #000000
;; Constant:          Green   #0f766e
;; Documentation:     Blue    #381a8a
;; Definition:        Purple  #9333ea
;; Type:              Orange  #E06D00
;; Comment:           Gray    #c4a599

(let ((main-bg "#fdf6e3")
      (main-fg "#000000")
      (region-bg "#edccb7")
      (error-fg "#db2777")
      (warning-fg "#eab308")
      (secondary-selection-bg "#c7d2fe")
      (cursor-bg "#dc322f")
      (diff))

  (custom-theme-set-faces
   'jin
   `(default ((((type graphic)) :background ,main-bg :foreground ,main-fg)))
   `(hl-line ((t (:box (:line-width (-1 . -2) :color ,region-bg :style nil)))))
   `(region ((t (:background ,region-bg))))
   '(fringe ((t)))
   
   ;; font lock
   `(font-lock-function-call-face ((t)))
   `(font-lock-builtin-face ((t ())))
   `(font-lock-doc-face ((t (:foreground "#381a8a"))))
   `(font-lock-warning-face ((t (:foreground ,warning-fg))))
   `(font-lock-keyword-face ((t (:foreground "#c4a599"))))
   `(font-lock-comment-face ((t (:foreground "#c4a599"))))
   `(font-lock-constant-face ((t (:foreground "#0f766e"))))
   `(font-lock-string-face ((t (:foreground "#0f766e"))))
   `(font-lock-number-face ((t (:foreground "#0f766e"))))
   `(font-lock-variable-name-face ((t (:foreground "#9333ea"))))
   `(font-lock-function-name-face ((t (:foreground "#9333ea"))))
   `(font-lock-type-face ((t (:foreground "#E06D00"))))
   `(font-lock-preprocessor-face ((t (:inherit font-lock-constant-face))))
   
   ;; meow
   `(meow-normal-cursor ((t (:background ,cursor-bg))))
   `(secondary-selection ((t (:background ,secondary-selection-bg))))
   ;; dired
   '(dired-directory ((t (:inherit font-lock-keyword-face))))
   '(highlight-symbol-face ((t ())))
   ;; Rime
   '(rime-default-face ((t (:inherit default))))
   '(rime-preedit-face ((t (:inverse-video nil :underline t))))
   '(rime-cursor-face ((t (:inherit font-lock-constant-face))))
   `(line-number-current-line
     ((t
       :box (:line-width (-1 . -2) :color ,region-bg :style nil)
       :bold t
       :foreground ,main-fg
       :inherit default)))

   ;; org mode
   '(org-level-1 ((t (:bold t))))
   '(org-level-2 ((t (:bold t))))
   '(org-level-3 ((t (:bold t))))
   '(org-level-4 ((t (:bold t))))
   '(org-level-5 ((t (:bold t))))
   '(org-level-6 ((t (:bold t))))
   '(org-level-7 ((t (:bold t))))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'jin)

(provide 'jin-theme)
;;; jin-theme.el ends here
