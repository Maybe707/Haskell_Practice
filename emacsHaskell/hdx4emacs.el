(require 'dap-mode)
(require 'dap-utils)

(dap-mode 1)
(dap-ui-mode 1)
(dap-tooltip-mode 1)
(tooltip-mode 1)
(setq debug-on-error t)

(dap-register-debug-provider
  "hda"
  (lambda (conf)
    (plist-put conf :dap-server-path (list "haskell-debug-adapter" "--hackage-version=0.0.31.0"))
    conf))

(dap-register-debug-template "haskell-debug-adapter"
  (list :type "hda"
    :request "launch"
    :name "haskell-debug-adapter"
    :internalConsoleOptions "openOnSessionStart"
    ;; :workspace (lsp-find-session-folder (lsp-session) (buffer-file-name))
    :workspace "/home/cyberdemon/Coding/Haskell/emacsHaskell"
    :startup "/home/cyberdemon/Coding/Haskell/emacsHaskell/app/Main.hs"
    :startupFunc ""
    :startupArgs ""
    :stopOnEntry t
    :mainArgs ""
    :ghciPrompt "H>>= "
    :ghciInitialPrompt "Prelude>"
    :ghciCmd "stack ghci --test --no-load --no-build --main-is TARGET --ghci-options -fprint-evld-with-show"
    :ghciEnv (list :dummy "")
    :logFile "home/cyberdemon/Coding/Haskell/emacsHaskell/hdx4emacs.log"
    :logLevel "WARNING"
    :forceInspect nil))
