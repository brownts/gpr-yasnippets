# GNAT Project Yasnippets for Emacs

This package provides snippets to be used when editing GNAT Project
files.  The following snippets are available:

| Name                | Key       |
|:--------------------|:---------:|
| Case Statement      | `case`    |
| Case Item           | `when`    |
| Case Item (others)  | `wheno`   |
| Package Declaration | `package` |
| Project Declaration | `project` |

## Manual Installation and Setup

```shell
$ git clone https://github.com/brownts/gpr-yasnippets
```

```elisp
(add-to-list 'load-path "/path/to/repo/gpr-snippets.el")
(require 'gpr-yasnippets)
(with-eval-after-load 'yasnippets
    (gpr-yasnippets-initialize))
```
