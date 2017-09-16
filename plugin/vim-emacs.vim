" Silly plugin to eval elisp in emacs

" Requirements:
" Emacs with a server running. M-x server-start
"
" Usage:
" Select a range of elisp lines and run the command :Emacs

" Run shell command with range as argument.
command! -range -nargs=1 SendToCommand <line1>,<line2>call SendToCommand(<q-args>)
function! SendToCommand(UserCommand) range
    let SelectedLines = getline(a:firstline,a:lastline)
    let output = ""
    for ScriptInput in SelectedLines
        let result = system(a:UserCommand, ScriptInput)
        if result != "nil\n"
            let output = output . result
        end
    endfor
    echo "Emacs response:"
    echo output
endfunction

" Evaluate elisp in Emacs
"command! -range=% Emacs !/usr/bin/emacsclient -n -e
"command -range=% Emacs SendToCommand("emacsclient -e")
command! -range Emacs <line1>,<line2>call SendToCommand("emacsclient --eval")

" A couple of emacs lisp lines to try out
"(message "Hello, world!")
"(info "Elisp")
"(message "Hi there!")

