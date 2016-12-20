$LOAD_PATH << '.'
require 'vertex'
require 'edge'
require 'matrix'

class Graph
    attr_accessor :vertexs

    def initialize
        @vertexs = []
    end

    def add_vertex(vertex)
        vertexs << vertex
        vertex.graph = self
    end

end

@graph = Graph.new
@graph.add_vertex(vertex0 = Vertex.new("v0"))
@graph.add_vertex(vertex1 = Vertex.new("v1"))
@graph.add_vertex(vertex2 = Vertex.new("v2"))
@graph.add_vertex(vertex3 = Vertex.new("v3"))
@graph.vertexs[0].add_edge(vertex2, 10)
@graph.vertexs[1].add_edge(vertex3, 15)
@graph.vertexs.each do |vertex|
    puts vertex.edges
end
@graph.vertexs[0].remove_edge(vertex0.edges.first)
@graph.vertexs.each do |vertex|
    puts vertex.edges
end