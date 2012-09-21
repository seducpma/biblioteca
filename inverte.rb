class Inverte
  def initialize(palavra)
    @palavra = palavra
  end
  
  def invert(palavra)
    j = palavra.size
    splited = palavra.split(//)
    j.downto(0) do |i|
        np = "#{np}#{splited[i]}"
	p np
    end
  end

  def palavra
    @palavra
  end
end
p = Inverte.new("sert")
puts p.invert("sert")

