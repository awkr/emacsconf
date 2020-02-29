(package-initialize)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(setq user-emacs-directory "~/jetsilver/emacsconf"
      package-user-dir "~/jetsilver/emacsconf/packages"
      load-prefer-newer t
      package--init-file-ensured t
      )

(unless (file-directory-p package-user-dir)
  (make-directory package-user-dir t))

;; (setq use-package-always-ensure t)

(use-package server
  :ensure nil
  :hook (after-init . server-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#ff6188" "#fcfcfa"] t)
 '(blink-cursor-mode t)
 '(column-number-mode 1)
 '(compilation-message-face (quote default))
 '(cursor-color "#ff9200")
 '(cursor-type (quote hbar))
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes
   (quote
    ("7f6d4aebcc44c264a64e714c3d9d1e903284305fd7e319e7cb73345a9994f5ef" "a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" "09cadcc2784baa744c6a7c5ebf2a30df59c275414768b0719b800cabd8d1b842" "abdb1863bc138f43c29ddb84f614b14e3819982936c43b974224641b0b6b8ba4" default)))
 '(delete-by-moving-to-trash t)
 '(display-time-24hr-format t)
 '(fci-rule-color "#3C3D37")
 '(fill-column 80)
 '(fringe-mode 4 nil (fringe))
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(indicate-empty-lines t)
 '(inhibit-startup-echo-area-message t)
 '(inhibit-startup-screen t)
 '(ivy-count-format "%d/%d ")
 '(ivy-display-style (quote fancy))
 '(magit-diff-use-overlays nil)
 '(main-line-separator-style (quote chamfer))
 '(menu-bar-mode nil)
 '(mouse-drag-copy-region t)
 '(package-archives
   (quote
    (("melpa" . "https://elpa.emacs-china.org/melpa/")
     ("GNU ELPA" . "https://elpa.emacs-china.org/gnu/"))))
 '(package-selected-packages
   (quote
    (protobuf-mode kubernetes amx gcmh keycast fireplace lsp-ivy lsp-ui ivy-xref ivy-yasnippet lsp-treemacs flycheck-golangci-lint gitlab-ci-mode-flycheck yasnippet lsp-mode company-lsp magit-todos dired-git magit crontab-mode counsel-projectile ace-window racer cargo flycheck-rust rust-mode rust-playground nord-theme paper-theme format-all company-go nginx-mode company k8s-mode wgrep-ag multiple-cursors markdown-mode fzf diminish smartparens avy ag counsel swiper crux use-package exec-path-from-shell bazel-mode dockerfile-mode go-mode)))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(show-trailing-whitespace t)
 '(tab-always-indent (quote complete))
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(visual-fill-column-width 100)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "darkorange")))))

;; scroll
(setq scroll-margin 7
      hscroll-margin 7
      scroll-step 7
      hscroll-step 7
      scroll-preserve-screen-position 'always
      mac-mouse-wheel-smooth-scroll t)

(setq-default shell-file-name "/bin/zsh")

(setq default-directory "~/jetsilver/")

(setq-default auto-save-default t)

;; backup
(setq version-control t
      kept-new-versions 6
      kept-old-versions 2
      delete-old-versions t
      backup-directory-alist '(("." . "~/.backup/")))

;; time
(setq display-time-format "%H:%M")
(setq display-time-interval 60)
(setq display-time-default-load-average nil)
(setq display-time-mail-string "")
(display-time-mode 1)

;; (set-frame-font "-*-M+ 1m-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1")
;; (set-frame-font "SF mono 14" nil t)
(set-default-font "JetBrains Mono 27")
(setq rust-format-on-save t)
(global-font-lock-mode 1)

(defun jetsilver/bazel-mode-hook ()
  (add-hook 'before-save-hook 'bazel-format))
(add-hook 'bazel-mode-hook 'jetsilver/bazel-mode-hook)

(defun jetsilver/set-bazel-file-major-mode (filename)
  (when (or (string= (file-name-extension filename) "bazel")
            (string= (file-name-base filename) "WORKSPACE"))
      (bazel-mode)))
(add-hook 'after-load-functions 'jetsilver/set-bazel-file-major-mode)

;; (add-hook 'protobuf-mode-hook
;;           (function (lambda ()
;;                       (add-hook 'before-save-hook
;;                                 'format-all-mode))))
(add-hook 'protobuf-mode 'format-all-mode)

(use-package bazel-mode
  :defer t)

(use-package dockerfile-mode
  :mode "\\Dockerfile\\'")

(global-set-key [remap move-beginning-of-line] #'crux-move-beginning-of-line)
(global-set-key [remap kill-whole-line] #'crux-kill-whole-line)

(use-package amx
  :ensure t)

(use-package hl-line
  :ensure nil
  :hook
  (after-init . global-hl-line-mode))

(use-package ivy-xref
  :ensure t
  :init
  ;; xref initialization is different in Emacs 27 - there are two different
  ;; variables which can be set rather than just one
  (when (>= emacs-major-version 27)
    (setq xref-show-definitions-function #'ivy-xref-show-defs))
  ;; Necessary in Emacs <27. In Emacs 27 it will affect all xref-based
  ;; commands other than xref-find-definitions (e.g. project-find-regexp)
  ;; as well
  (setq xref-show-xrefs-function #'ivy-xref-show-xrefs))

(use-package lsp-mode
  :ensure t
  :diminish lsp-mode
  :commands (lsp lsp-deferred)
  :hook (go-mode . lsp-deferred)
  :custom
  (lsp-prefer-flycheck t)
  (lsp-diagnostic-package :flycheck)
  (lsp-eldoc-render-all nil)
  (lsp-gopls-staticcheck t)
  (lsp-gopls-complete-unimported t)
  (lsp-enable-symbol-highlighting nil)
  (lsp-gopls-staticcheck t)
  (lsp-auto-guess-root t)
  (lsp-enable-snippet nil)
  )

;; (use-package lsp-ui
;;   :requires lsp-mode flycheck
;;   :config
;;   (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
;;   (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
;;   )
;; (setq lsp-ui-doc-enable nil)
;; (setq lsp-ui-flycheck-enable t)
;; (setq lsp-ui-sideline-show-diagnostics nil)

;; (setq lsp-ui-imenu-enable t
;;       lsp-use-native-json nil)
;; (setq lsp-ui-doc-enable t
;;       lsp-ui-doc-use-childframe t
;;       lsp-ui-doc-position 'top
;;       lsp-ui-doc-include-signature t
;;       lsp-ui-sideline-enable nil
;;       lsp-ui-flycheck-list-position 'right
;;       lsp-ui-flycheck-live-reporting t
;;       lsp-ui-peek-enable t
;;       lsp-ui-peek-list-width 60
;;       lsp-ui-peek-peek-height 25)

(use-package company-lsp
  :ensure t
  :commands company-lsp
  :config
  (push 'company-lsp company-backends)
  (setq company-lsp-enable-snippet nil
        ;; disable client-side cache because the LSP server does a better job
        company-transformers nil
        company-lsp-async t
        company-lsp-cache-candidates nil))

(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

(use-package company
  :ensure t
  :diminish company-mode
  :hook (prog-mode . company-mode)
  :bind (:map company-active-map
              ("C-p" . company-select-previous)
              ("C-n" . company-select-next)
              ("<tab>" . company-complete-common-or-cycle)
              :map company-search-map
              ("C-p" . company-select-previous)
              ("C-n" . company-select-next))
  :config
  (setq company-idle-delay .5
        company-show-numbers t
        company-minimum-prefix-length 2
        company-tooltip-align-annotations t))

(use-package flycheck
  :ensure t
  :config
  ;; (setq flycheck-highlighting-mode nil)
  ;; (setq flycheck-display-errors-function nil)
  )

(minibuffer-depth-indicate-mode)

(use-package ivy
  :ensure t
  :diminish ivy-mode
  :config
  (ivy-mode t)
  ;; (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t
        ivy-initial-inputs-alist nil
        ivy-virtual-abbreviate 'full) ;; show the full virtual file paths
  :bind (("C-c o" . ivy-occur))
  :custom ()
  )

(global-set-key "\C-s" 'swiper)

;; ace
(use-package ace-window
  :bind (("M-o" . ace-window))
  :config
  (set-face-attribute
   'aw-leading-char-face nil
   :foreground "orange"
   :weight 'bold
   :height 1.0))
(setq aw-ignore-current t)

(use-package counsel
  :ensure t
  :config
  (defun jetsilver/counsel-fzf-ag-files (&optional input dir)
    "Run `fzf' in tandem with `ag' to find files in the present directory.
If invoked from inside a version-controlled repository, then the
corresponding root is used instead."
    (interactive)
    (let* ((process-environment
            (cons (concat "FZF_DEFAULT_COMMAND=ag -Sn --color never --files --no-follow --hidden")
                  process-environment))
           (vc (vc-root-dir)))
      (if dir
          (counsel-fzf input dir)
        (if (eq vc nil)
            (counsel-fzf input default-directory)
          (counsel-fzf input vc)))))

  (defun jetsilver/counsel-fzf-dir (arg)
    "specify root directory for `counsel-fzf'"
    (jetsilver/counsel-fzf-ag-files ivy-text
                                    (read-directory-name
                                     (concat (car (split-string counsel-fzf-cmd))
                                             " in directory: "))))

  (defun jetsilver/counsel-ag-dir (arg)
    "specify root directory for `counsel-ag'"
    (let ((current-prefix-arg '(4)))
      (counsel-ag ivy-text nil "")))

  ;; pass functions as appropriate Ivy actions (accessed via M-o)
  (ivy-add-actions
   'counsel-fzf
   '(("r" jetsilver/counsel-fzf-dir "change root directory")
     ("g" jetsilver/counsel-ag-dir "use ag in root directory")
     ("a" jetsilver/counsel-fzf-ace-window "ace-window switch")))

  (ivy-add-actions
   'counsel-ag
   '(("r" jetsilver/counsel-ag-dir "change root directory")
     ("z" jetsilver/counsel-fzf-dir "find file with fzf in root directory")))

  (ivy-add-actions
   'counsel-find-file
   '(("g" jetsilver/counsel-ag-dir "use ag in root directory")
     ("z" jetsilver/counsel-fzf-dir "find file with fzf in root directory")))

  ;; remove commands that only work with key bindings
  (put 'counsel-find-symbol 'no-counsel-M-x t)
  :bind (("M-x" . counsel-M-x)
		 ("C-x C-f" . counsel-find-file)
		 ("C-x f" . counsel-fzf)
		 ("C-c k" . counsel-ag)))

(use-package avy
  :ensure t
  :bind (("M-s" . avy-goto-char-2) ;; TODO another keybinding is C-', but why not working in macOS?
         ("M-g f" . avy-goto-line)))

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c d") 'dired-jump)

(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :hook
  (after-init . smartparens-global-mode)
  :config
  (progn
    (show-smartparens-global-mode t)))

(add-hook 'markdown-mode-hook (lambda () (setq mode-name "MD")))
(add-hook 'after-init-hook 'global-company-mode)

(defun jetsilver/trailing-whitespace ()
  (when (derived-mode-p 'prog-mode)
    (delete-trailing-whitespace)))

(add-hook 'before-save-hook 'jetsilver/trailing-whitespace)

(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))

(when (not package-archive-contents)
  (package-refresh-contents))

;; org
(setq org-startup-indented t)

(fset 'yes-or-no-p 'y-or-n-p)
(global-auto-revert-mode t)
(delete-selection-mode t)

;; (defun server-shutdown()
;;   "save buffers, quit, and shutdown server"
;;   (interactive)
;;   (save-some-buffers)
;;   (kill-emacs)
;;   )

(use-package format-all
  :diminish format-all-mode)

(use-package gcmh
  :demand t
  :diminish gcmh-mode
  :config
  (gcmh-mode))

(use-package protobuf-mode
  :mode "\\.proto$")

(defvar jet/freeze-timer)
(defun jet/freeze-function ()
  (read-only-mode t)
  ;; (emacs-lock-mode t)
  (message "I'm Frozen")
  )
(setq jet/freeze-timer (run-with-idle-timer 120 1 #'jet/freeze-function))

(defun jet/move-line-up()
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun jet/move-line-down()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(meta shift p)] 'jet/move-line-up)
(global-set-key [(meta shift n)] 'jet/move-line-down)

;; (setq-default initial-scratch-message (concat ";; Happy hacking, " user-login-name " - Emacs ♥ you!\n\n")
;;               )
(setq-default initial-scratch-message ";; 一只船孤独地航行在海上\n;; 它既不寻求幸福 也不逃避幸福\n;; 它只是向前航行\n;; 底下是沉静碧蓝的大海 而头顶是金色的太阳\n;; 将要直面的 与已成过往的\n;; 较之深埋于它内心的 皆为微沫\n\n")
