class GraphNode
    def initialize(node) 
        @neighbors = []
    end

    def neighbors
        @neighbors
    end

    def neighbors[]=(*nodes)
        @neighbors += nodes
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

def bfs(starting_node, target_value)
    return target_value if starting_node.neighbors.include?(target_value)
    return nil
end

bfs(a, "b")

