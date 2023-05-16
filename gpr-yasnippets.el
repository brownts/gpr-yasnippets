;;; gpr-yasnippets.el --- Yasnippets for GNAT project files -*- lexical-binding: t; -*-

;; Copyright (C) 2023 Troy Brown

;; Author: Troy Brown <brownts@troybrown.dev>
;; Created: May 2023
;; Version: 0.5.0
;; Keywords: gpr gnat languages snippets
;; URL: https://github.com/brownts/gpr-yasnippets
;; Package-Requires: ((emacs "24.4") (yasnippet "0.14.0"))

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; A collection of snippets for GNAT Project files.

;;; Code:

(require 'yasnippet)

(defconst gpr-yasnippets--snippets-dir
  ;; Based on 'yasnippet-snippets-dir' from yasnippet-snippets.el
  (expand-file-name
   "snippets"
   (file-name-directory
    (cond
     (load-in-progress load-file-name)
     ((bound-and-true-p byte-compile-current-file) byte-compile-current-file)
     (t (buffer-file-name)))))
  "Return path to snippets directory.")

;;;###autoload
(defun gpr-yasnippets-initialize ()
  "Load the GNAT Project snippets directory."
  (add-to-list 'yas-snippet-dirs 'gpr-yasnippets--snippets-dir 'append)
  (yas-load-directory gpr-yasnippets--snippets-dir))

;;;###autoload
(with-eval-after-load 'yasnippet
  (gpr-yasnippets-initialize))

(provide 'gpr-yasnippets)

;;; gpr-yasnippets.el ends here
