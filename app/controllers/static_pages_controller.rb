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
  
    # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
    
end
