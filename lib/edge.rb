class Edge
    attr_accessor :from, :to, :weigth
    def initialize(from, to, weigth)
        @from, @to, @weigth = from, to, weigth
    end

    def to_s
        "De: #{from.to_s}, Para: #{to.to_s}, Valor: #{weigth.to_s}"
    end
end