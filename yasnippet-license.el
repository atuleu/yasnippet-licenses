;;; yasnippet-licenses.el --- Collection of yasnippet snippets for license

;; Copyright (C) 2023 Alexandre Tuleu

;; Author: Alexandre Tuleu <alexandre.tuleu.2005@polytechnique.org>
;; Keywords: snippets
;; Version: 1.0
;; Package-Requires: ((yasnippet "0.8.0"))
;; Keywords: convenience, snippets
;; Homepage: https://github.com/atuleu/yasnippet-snippets

;;; Commentary:

;; License support for Yasnippet

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

;; NOTE:this code is solely based on yasnippet-snippets package.
(require 'yasnippet)

(defconst yasnippet-licenses-dir
	(expand-file-name
		"snippets"
		(file-name-directory
			;; Copied from ‘f-this-file’ from f.el.
			(cond
				(load-in-progress load-file-name)
				((and (boundp 'byte-compile-current-file) byte-compile-current-file)
					byte-compile-current-file)
				(:else (buffer-file-name))))))

;;;###autoload
(defun yasnippet-licenses-initialize ()
	"Load the `yasnippet-licenses' snippets directory."
	;; NOTE: we add the symbol `yasnippet-licenses-dir' rather than its
	;; value, so that yasnippet will automatically find the directory
	;; after this package is updated (i.e., moves directory).
	(add-to-list 'yas-snippets-dirs 'yasnippet-licenses-dir t)
	(yas--load-snippet-dirs))

;;;###autoload
(eval-after-load 'yasnippet
	'(yasnippet-licenses-initialize))


(provide 'yasnippet-licenses)

;;; yasnippet-licenses.el ends here
