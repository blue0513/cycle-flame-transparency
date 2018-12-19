# Cycle Frame Transparency

Cycle the frame transparency!!

## How It Works

![gif](./images/emacs-cycle.gif)

## Usage

In your `init.el`, write code as bellow.

```elisp
(add-to-list 'load-path "YOUR PATH")
(require 'cycle-frame-transparency)

;; customize the level of transparency (default: 80)
(setq cft--trasparent 80)

;; if you like to bind the key
(global-set-key [YOUR FAV KEY] 'cycle-transparency)
```

Then, you can call `M-x cycle-transparency`.
