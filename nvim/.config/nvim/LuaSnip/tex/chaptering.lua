local ls    = require('luasnip')
local s     = ls.snippet
local t     = ls.text_node
local f     = ls.function_node
local i     = ls.insert_node
local fmt   = require('luasnip.extras.fmt').fmt
local fmta  = require('luasnip.extras.fmt').fmta
local rep = require("luasnip.extras").rep

function slug(args, parent, user_args)
    return string.gsub(string.gsub(args[1][1],"[^ A-Za-z]",""),"[ ]+","-")
end

return {
    s('sec', fmta(
        [[
            \section{<>}
            \label{sec:<>}
        ]], 
        { i(1), f(slug, 1) })
    ),
    s('sub', fmta(
        [[
            \subsection{<>}
            \label{ssec:<>}
        ]], 
        { i(1), f(slug, 1) })
    ),
    s('ssub', fmta(
        [[
            \subsubsection{<>}
            \label{sssec:<>}
        ]], 
        { i(1), f(slug, 1) })
    ),
}
