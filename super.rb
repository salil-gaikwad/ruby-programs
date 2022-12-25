##############################################################################
class ParentOne
  def say
    puts "Test 1: Hello from Parent"
  end
end

class ChildOne < ParentOne
  def say
    super
  end
end
ChildOne.new.say
# Test 1: Hello from Parent
##############################################################################
class GrandParentTwo
  def say
    puts "Test 2: Hello from Grand Parent"
  end
end

class ParentTwo < GrandParentTwo
end

class ChildTwo < ParentTwo
  def say
    super
  end
end
ChildTwo.new.say
# Test 2: Hello from Grand Parent
##############################################################################
class ParentThree
  def say(message)
    puts message
  end
end

class ChildThree < ParentThree
  def say(message)
    super
  end
end
ChildThree.new.say("Test 3: Hello from Parent")
# Test 3: Hello from Parent
##############################################################################
class ParentFour
  def say
      puts message
    rescue => e
      puts "Test 4: Error in Parent " + e.message
  end
end

class ChildFour < ParentFour
  def say(message)
    super
  rescue => e
    puts "Test 4: Error in Child " + e.message
  end
end
ChildFour.new.say("Test 3: Hello from Parent")
# Test 4: Error in Child wrong number of arguments (given 1, expected 0)
##############################################################################
