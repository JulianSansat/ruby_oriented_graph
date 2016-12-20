class Vertex
    attr_accessor :name, :graph, :edges

    def initialize(name)
        @name = name
        @edges = []
    end

    def add_edge(to, weigth)
        edges << Edge.new(self, to, weigth)
    end

    def remove_edge(edge)
        edges.delete(edge)
    end

    def to_s
        @name
    end

end