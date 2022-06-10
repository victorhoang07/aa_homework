class Stack
    attr_reader :ivar
    def initialize
        @ivar = []
    end

    def push(el)
        @ivar.push(el)
    end

    def pop 
        @ivar.pop
    end

    def peek
        @ivar[-1]
    end
end

s = Stack.new

s.push(1)
s.push(1)
s.push(1)
s.push(1)
s.push(1)
s.push(1)
p s.ivar
p s.pop
p s.ivar