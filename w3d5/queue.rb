class Queue
    attr_reader :ivar
    def initialize
        @ivar = []
    end

    def enqueue(el)
        @ivar.push(el)
    end

    def dequeue
        @ivar.shift
    end

    def peek
        @ivar[0]
    end
end

