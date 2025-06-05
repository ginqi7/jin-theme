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

(let ((main-bg "#fdf6e3")
      (main-fg "black")
      (region-bg "#edccb7")
      (keyword-fg "#5b21b6")
      (string-bg "#faece1")
      (constant-fg "#381a8a")
      (function-fg "#9333ea")
      (variable-fg "#0f766e")
      (type-fg "#16a34a")
      (comment-fg "#c4a599")
      (error-fg "#db2777")
      (warning-fg "#eab308")
      (secondary-selection-bg "#c7d2fe")
      (cursor-bg "#dc322f")
      (diff))

  (custom-theme-set-faces
   'jin
   `(default
     ((((type graphic))
       :background ,main-bg
       :foreground ,main-fg)))
   `(hl-line
     ((t (:box (:line-width (-1 . -2) :color ,region-bg :style nil)))))
   `(region ((t (:background ,region-bg))))
   '(fringe ((t)))
   ;; font lock
   `(font-lock-comment-face
     ((t
       (:foreground ,comment-fg :weight normal :italic t :variable-pitch t))))
   `(font-lock-doc-face ((t (:inherit ,font-lock-comment-face))))
   `(font-lock-warning-face ((t (:foreground ,warning-fg))))
   `(font-lock-string-face ((t (:background ,string-bg))))
   `(font-lock-function-name-face ((t (:foreground ,function-fg))))
   `(font-lock-keyword-face ((t (:foreground ,keyword-fg))))
   `(font-lock-constant-face ((t (:foreground ,constant-fg))))
   `(font-lock-builtin-face ((t ())))
   `(font-lock-variable-name-face ((t (:foreground ,variable-fg))))
   `(font-lock-type-face ((t (:foreground ,type-fg))))
   `(font-lock-preprocessor-face
     ((t (:inherit font-lock-constant-face))))
   ;; meow
   `(meow-normal-cursor ((t (:background ,cursor-bg))))
   `(secondary-selection ((t (:background ,secondary-selection-bg))))
   ;; dired
   '(dired-directory ((t (:inherit font-lock-keyword-face))))
   '(highlight-symbol-face ((t ())))
   ;; Rime
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
