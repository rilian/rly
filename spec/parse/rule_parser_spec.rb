require "rly"
require "rly/parse/rule_parser"

describe Rly::RuleParser do
  it "parses a simple rule string" do
    s = 'expression : expression "+" expression
                    | expression "-" expression
                    | expression "*" expression
                    | expression "/" expression'
    p = Rly::RuleParser.new

    productions = p.parse(s)

    productions.length.should == 4
    productions[0].should == [:expression, [:expression, '+', :expression], nil]
    productions[1].should == [:expression, [:expression, '-', :expression], nil]
    productions[2].should == [:expression, [:expression, '*', :expression], nil]
    productions[3].should == [:expression, [:expression, '/', :expression], nil]
  end
end
