class Animal
  def swim
    p "Animal can swim"
  end
end

class Tiger < Animal
  def swim
    p "Tigers can swim"
  end
end

tiger = Tiger.new
tiger.swim