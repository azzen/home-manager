local ls            = require('luasnip')
local s             = ls.snippet
local t             = ls.text_node
local f             = ls.function_node
local i             = ls.insert_node
local fmt           = require('luasnip.extras.fmt').fmt
local fmta          = require('luasnip.extras.fmt').fmta
local rep           = require("luasnip.extras").rep
local tsutils       = require("tsutils")

local function add_snippet(abbr, expand)
    return s({ trig = ';' .. abbr, snippetType = 'autosnippet' }, t('\\' .. expand), { condition=tsutils.in_mathzone })
end

return {
    add_snippet('a', 'alpha'),
    add_snippet('b', 'beta'),
    add_snippet('g', 'gamma'),
    add_snippet('G', 'Gamma'),
    add_snippet('d', 'delta'),
    add_snippet('D', 'Delta'),
    add_snippet('e', 'epsilon'),
    add_snippet('ve', 'varepsilon'),
    add_snippet('vt', 'vartheta'),
    add_snippet('t', 'theta'),
    add_snippet('T', 'Theta'),
    add_snippet('i', 'iota'),
    add_snippet('k', 'kappa'),
    add_snippet('l', 'lambda'),
    add_snippet('L', 'Lambda'),
    add_snippet('m', 'mu'),
    add_snippet('n', 'nu'),
    add_snippet('x', 'xi'),
    add_snippet('X', 'Xi'),
    add_snippet('p', 'pi'),
    add_snippet('P', 'Pi'),
    add_snippet('r', 'rho'),
    add_snippet('f', 'phi'),
    add_snippet('F', 'Phi'),
    add_snippet('s', 'sigma'),
    add_snippet('S', 'Sigma'),
    add_snippet('t', 'tau'),
    add_snippet('vf', 'varphi'),
    add_snippet('o', 'omega'),
    add_snippet('O', 'Omega'),
}
