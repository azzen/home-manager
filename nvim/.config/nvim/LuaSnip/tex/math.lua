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
    -- operations
    s('.', t('\\cdot'), { condition = tsutils.in_mathzone }),
    s('c.', t('\\cdots'), { condition = tsutils.in_mathzone }),
    s('l.', t('\\ldots'), { condition = tsutils.in_mathzone }),
    s('x', t('\\times'), { condition = tsutils.in_mathzone }),
    s('ss', fmta('\\^{<>}', { i(1) }), { condition = tsutils.in_mathzone }),
    s('sinv', t('\\^{-1}'), { condition = tsutils.in_mathzone }),
    s('xor', t('\\oplus'), { condition = tsutils.in_mathzone }),
    -- common sets
    s('RR', t('\\mathbb{R}'), { condition = tsutils.in_mathzone }),
    s('ZZ', t('\\mathbb{Z}'), { condition = tsutils.in_mathzone }),
    s('NN', t('\\mathbb{N}'), { condition = tsutils.in_mathzone }),
    s('QQ', t('\\mathbb{Q}'), { condition = tsutils.in_mathzone }),
    s('PP', t('\\mathbb{P}'), { condition = tsutils.in_mathzone }),
    s('pring', fmta('\\mathbb{Z}[<>]_{<>}/(<>)', {i(1), i(2), i(3)}), { condition = tsutils.in_mathzone }),
    -- big operators
    s('sum', fmta('\\sum_{<>}^{<>}', {i(1), i(2)}), { condition = tsutils.in_mathzone }),
    s('sumi', fmta('\\sum_{i = 0}^{<>}', {i(1)}), { condition = tsutils.in_mathzone }),
    s('sumin', t('\\sum_{i = 0}^{n}'), { condition = tsutils.in_mathzone }),
    s('prod', fmta('\\prod_{<>}^{<>}', {i(1), i(2)}), { condition = tsutils.in_mathzone }),
    s('prodi', fmta('\\prod_{i = 0}^{<>}', {i(1)}), { condition = tsutils.in_mathzone }),
}
