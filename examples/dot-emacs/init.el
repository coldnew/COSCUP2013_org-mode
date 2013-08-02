xF;;; init.el --- configuration entry point.
(eval-when-compile (require 'cl))

(message "\nEmacs is powering up... Be patient, Master %s!\n" (getenv "USER"))

;; Define emacs-dir where all the files live.
(setq emacs-dir (file-name-directory
		 (or load-file-name (buffer-file-name))))

;; Load up org-mode and org-babel
(require 'org)

;; Load config.org from emacs-dir
(org-babel-load-file
 (expand-file-name "config.org" emacs-dir))

;; Done and done!!
(message "\nEmacs is ready to serve you, Master %s!\n" (getenv "USER"))

;;; init.el ends here.
