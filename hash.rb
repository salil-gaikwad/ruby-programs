##############################################################################

##############################################################################
class A
  protected
  def aa
    puts "Hi from A"
  end
end

class B < A
  def bb
    aa
    puts "Hi from B"
  end
end

B.new.bb
