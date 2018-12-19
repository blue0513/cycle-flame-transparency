;;; cycle-frame-transparency --- cycle frame transparency

;; Copyright (C) 2018 Taiju Aoki

;; Author: Taiju Aoki <aokitaiju0513@gmail.com>
;; Version: 0.1
;; URL: https://github.com/blue0513/cycle-frame-transparency

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

;;; Commentary:

;; Add the following to your Emacs init file:
;;
;; (require 'cycle-frame-transparency)
;;
;; You can cycle the frame transparency.

;;; Code:

(defgroup cycle-frame-transparency nil
  "Cycle the frame transparency."
  :group 'cycle-frame-transparency)

(defcustom cft--trasparent 80
  "Transparency of the frame."
  :type 'integer
  :group 'cycle-frame-transparency)

(defcustom cft--non-transparent 100
  "Default transparency of the frame."
  :type 'integer
  :group 'cycle-frame-transparency)

(defun set-frame-transparency (transparency)
  "Set frame transparency to TRANSPARENCY."
  (set-frame-parameter nil 'alpha transparency))

(defun check-frame-transparency ()
  "Check if the frame is transparent."
  (and (not (eq (frame-parameter nil 'alpha) nil))
  (< (frame-parameter nil 'alpha) cft--non-transparent)))

;;;###autoload
(defun cycle-transparency ()
  "Cycle the frame transparency from default to transparent."
  (interactive)
  (if (check-frame-transparency)
      (set-frame-transparency cft--non-transparent)
    (set-frame-transparency cft--trasparent)))

(provide 'cycle-frame-transparency)

;;; cycle-frame-transparency.el ends here
