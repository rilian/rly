module Rly
  class YaccSymbol
    attr_accessor :type, :value, :lineno, :endlineno, :lexpos, :endlexpos

    def to_s
      @value.to_s
    end

    def inspect
      "#<YaccSymbol #{@type} '#{@value}'>"
    end
  end
end
