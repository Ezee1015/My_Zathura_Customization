# My Zathura Customization

My configuration for [Zathura](https://pwmt.org/projects/zathura/), a PDF viewer.

## Install configuration

```bash
make install
```

## Shortcuts

|                                    Key                                    | Function                                |
|:-------------------------------------------------------------------------:|-----------------------------------------|
| **`gg`** **`G`** **`[Numero]gg`** **`[Numero]G`** **`:[Numero] [Enter]`** | Jump between the pages                  |
|                    **`+`** **`-`** **`[Mouse wheel]`**                    | Zoom in/out (**`=`** to reset zoom)     |
|                      **`h`** **`j`** **`k`** **`l`**                      | Move around                             |
|      **`[Space]`** **`[Shift][Space]`** **`[Shift]j`** **`[Shift]k`**     | Jump by 1 page                          |
|                       **`[Shift]h`** **`[Shift]l`**                       | Go to the start/end of the current page |
|                              **`[Control]r`**                             | Dark-light mode toggle                  |
|                             **`m[Register]`**                             | Quick-mark a page                       |
|                             **`'[Register]`**                             | Go to quick-mark                        |
|                                **`[TAB]`**                                | Table of content                        |
|                                  **`f`**                                  | (Select and) Go to link                 |
|                               **`[Shift]f`**                              | (Select and) Show the link direction    |
|                                  **`c`**                                  | (Select and) Copy the link direction    |
|                       **`/`** **`n`** **`[Shift]n`**                      | Search                                  |
|                                  **`q`**                                  | Exit                                    |

### Fit options

|   Key   | Function      |
|:-------:|---------------|
| **`b`** | Best fit      |
| **`a`** | Fit to height |
| **`s`** | Fit to width  |

### Bookmarks

|          Key          | Function                             |
|:---------------------:|--------------------------------------|
|  **`:bmark [Name]`**  | Bookmark a page (session-persistent) |
|  **`:blist [Name]`**  | List the bookmarks                   |
| **`:bdelete [Name]`** | Delete a bookmark                    |

### Others

|                     Key                     | Function              |
|:-------------------------------------------:|-----------------------|
|                   **`r`**                   | Rotate PDF            |
|                   **`d`**                   | Toggle two pages mode |
|               **`[Control]n`**              | Toggle status bar     |
|                 **`:print`**                | Print pdf             |
|                 **`:info`**                 | Print pdf info        |
| **`F5`** **`[Space]`** **`[Shift][Space]`** | Presentation mode     |
