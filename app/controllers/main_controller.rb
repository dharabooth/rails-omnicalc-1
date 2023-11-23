class MainController < ApplicationController

  def square
    render({ :template => "omni_templates/square"})
  end

  def square_results
    @square_num = params.fetch("user_number") 

     @num_after_square = params.fetch("user_number").to_f * params.fetch("user_number").to_f
 
    render({ :template => "omni_templates/square_results"})
  end

  def root
    render({ :template => "omni_templates/sqrt"})
  end

  def root_results
    @root_num = params.fetch("user_number")

    @num_rooted = params.fetch("user_number").to_f ** 0.5
    render({ :template => "omni_templates/sqrt_results"})
  end

  def payment
    render({ :template => "omni_templates/pymt"})
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f / (100*12)
    @term = params.fetch("user_years").to_f * 12
    @principal = params.fetch("user_pv").to_f
    
    @numerator = @apr * @principal
    @denominator = 1 - ((1 + @apr) ** (-1 * @term))

    @payment_calc = @numerator / @denominator
    render({ :template => "omni_templates/pymt_results"})
  end

  def random
    render({ :template => "omni_templates/random"})
  end

  def random_results
    render({ :template => "omni_templates/random_results"})
  end

  
end
