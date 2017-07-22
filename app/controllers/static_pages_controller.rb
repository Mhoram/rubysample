class StaticPagesController < ApplicationController
  def home
    @karl = [1,4,6,3,3,3,7,8,9]
    @karlreverse = @karl.reverse
  end

  def help
  end
  
  def about
  end
  
  def calculation(value)
    if value
      return true
    else
      return false
    end
  end
    
end
