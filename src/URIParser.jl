__precompile__()

module URIParser

export URI
export defrag, userinfo, path_params, query_params, isvalid
export escape, escape_form, escape_with, unescape, unescape_form

import Base: isequal, isvalid, show, print, (==)
using Compat

if VERSION >= v"0.7.0-DEV.2915"
    using Unicode
    using Base.Unicode: isascii
end

if VERSION >= v"0.7.0-DEV.3526"
    _parse(T, s, b) = Base.parse(Int, s, base=b)
else
    _parse(T, s, b) = Base.parse(Int, s, b)
end

include("parser.jl")
include("esc.jl")
include("utils.jl")
include("precompile.jl")
_precompile_()

end # module
