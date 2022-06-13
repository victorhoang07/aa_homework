require "set"

class GraphNode
    attr_reader :val, :neighbors
    def initialize(val)
        @val = val
        @neighbors = []
    end


    def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = Set.new()

        until queue.empty?
            node = queue.shift
            if !visited.include?(node)
                return node.val if node.val == target_value
                visited.add(node)
                queue += node.neighbors
            end
        end
        nil
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

bfs(a, "b")