
def slug(arr)
    word = ""

    arr.each do |ele|
        arr.each do |ele2|
            if ele.length > ele2.length
                word = ele
            else 
                word = ele2
            end
        end
    end
    word
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end

def dominant(arr)
    prc = Proc.new { |i, j| i.length <=> j.length }
    
    arr.merge_sort(&prc)[-1]

end

def clever(arr)
    word = ""

    arr.each do |ele|
        if ele.length > word.length
            word = ele
        end
    end
    word
end

def slow_dance(str, tiles_array)
    tiles_array.each.with_index do |ele, i|
        if str == ele
            return i 
        end
    end
end

def fast_dance(str, hash)
    hash[str]
end

p clever(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
# => "fiiiissshhhhhh"

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
tiles_hash = {"up" => 0,"right-up" => 1,"right"=> 2,"right-down" => 3,"down" => 4,"left-down" => 5,"left" => 6,"left-up" => 7
}
p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)