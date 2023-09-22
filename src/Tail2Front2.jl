module Tail2Front2

export tail2, front2

using Base: tail, front

tail2(t::Tuple) = tail(tail(t))
front2(t::Tuple) = front(front(t))

end
