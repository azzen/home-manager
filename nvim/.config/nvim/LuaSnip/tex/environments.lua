local ls    = require('luasnip')
local s     = ls.snippet
local t     = ls.text_node
local f     = ls.function_node
local i     = ls.insert_node
local fmt   = require('luasnip.extras.fmt').fmt
local fmta  = require('luasnip.extras.fmt').fmta
local rep = require("luasnip.extras").rep

return {
    s('enum', fmta(
        [[
            \begin{enumerate}
                <>
            \end{enumerate}
        ]], 
        { i(1) })
    ),
    s('item', fmta(
        [[
            \begin{itemize}
                <>
            \end{itemize}
        ]], 
        { i(1) })
    ),
    s('it', t('\\item ')),
    s('begin', fmta(
        [[
            \begin{<>}
                <>
            \end{<>}
        ]], 
        { i(1), i(2), rep(1) })
    ),
    s('mi', fmta('\\( <> \\)', { i(1) })), 
    s('dm', fmta(
        [[
            \[ 
                <> 
            \]
        ]], { i(1) }) 
    ), 
}


