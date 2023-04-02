local ls    = require('luasnip')
local s     = ls.snippet
local t     = ls.text_node
local f     = ls.function_node
local i     = ls.insert_node
local fmt   = require('luasnip.extras.fmt').fmt
local fmta  = require('luasnip.extras.fmt').fmta

return {
    s('test', { t('aaaa') }),
    s('bf', fmta('\\textbf{<>}', { i(1) })),
    s('ita', fmta('\\textita{<>}', { i(1) })),
    s('tw', fmta('\\texttt{<>}', { i(1) })),
}


