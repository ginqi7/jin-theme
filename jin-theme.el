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

(custom-theme-set-faces
 'jin
 `(default
   ((((type tty))
     :background "#f8f8f8")
    (((type graphic))
     :background "#fdf6e3"
     :foreground "black")))
 `(hl-line
   ((t (:box (:line-width (-1 . -2) :color "#edccb7" :style nil)))))
 `(cursor ((t (:background "#6c71c4"))))
 '(region ((t (:background "#edccb7"))))
 '(fringe ((t )))
 `(font-lock-comment-face
   ((t
     (:foreground ,"#c4a599" :weight normal :italic t :variable-pitch t ))))
 `(font-lock-doc-face ((t (:inherit ,font-lock-comment-face))))
 `(font-lock-warning-face ((t (:foreground "red"))))
 `(font-lock-string-face ((t (:background "#FFEE99"))))
 `(font-lock-function-name-face ((t (:background "#e9defa"))))
 `(font-lock-keyword-face ((t (:foreground "#6c71c4"))))
 `(font-lock-constant-face ((t (:foreground "#381a8a"))))
 `(font-lock-builtin-face ((t ())))
 `(font-lock-variable-name-face ((t ())))
 `(font-lock-type-face ((t (:foreground "#b58900"))))
 `(font-lock-preprocessor-face
   ((t (:inherit font-lock-constant-face))))
 '(meow-keypad-indicator
   ((t (:foreground "#801717" :background "#FF6666"))))
 '(meow-insert-indicator
   ((t (:foreground "#309030" :background "#AAE9A0"))))
 '(meow-normal-indicator
   ((t (:foreground "#6F5033" :background "#FFEE99"))))
 '(meow-motion-indicator
   ((t (:foreground "#505090" :background "#AACCEE"))))
 '(meow-keypad-cursor ((t (:background "#7c2902"))))
 '(meow-insert-cursor ((t (:background "#014f39"))))
 '(meow-normal-cursor ((t (:background "#dc322f"))))
 '(meow-motion-cursor ((t (:background "#035063"))))
 '(dired-directory ((t (:inherit font-lock-keyword-face))))
 `(parenthesis ((t (:foreground "#909090"))))
 '(highlight-symbol-face ((t ())))
 '(rime-preedit-face ((t (:inverse-video nil :underline t))))
 '(rime-cursor-face ((t (:inherit font-lock-constant-face))))
 '(cider-fringe-good-face ((t (:foreground "#006666"))))
 `(line-number-current-line
   ((((type graphic))
     :box (:line-width (-1 . -2) :color "#edccb7" :style nil)
     :bold t
     :foreground "#404040"
     :inherit default)
    (t (:bold t :inherit default :background "#ffffff"))))
 '(window-divider ((t (:foreground "grey60"))))
 '(vertical-border ((t (:foreground "grey20"))))
 '(org-block ((t (                      ;:background "#efffef"
                  ;;      :box (:line-width (-1 . -2) :color "#edccb7" :style nil)
                  :extend t))))
 '(org-table ((t (:foreground "grey40"))))
 '(org-level-1 ((t (:bold t ))))
 '(org-level-2 ((t (:bold t ))))
 '(org-level-3 ((t (:bold t ))))
 '(org-level-4 ((t (:bold t ))))
 '(org-level-5 ((t (:bold t ))))
 '(org-level-6 ((t (:bold t ))))
 '(org-level-7 ((t (:bold t )))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'jin)

(provide 'jin-theme)
;;; jin-theme.el ends here
