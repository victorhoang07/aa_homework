class LRUCache
    def initialize(size)
        @size = size
        @cache = []

    end

    def count
      # returns number of elements currently in cache
      @cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el
        elsif count >= @size
            @cache.shift
            @cache << el
        else        
            @cache << el
        end
    end

    def show
        @cache
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end