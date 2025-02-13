class CalcController < ApplicationController

  def new_square_calc

    render({ :template => "calc_templates/homepage" })
    end

    def square_results
      @the_num = params.fetch("users_number").to_f
      @the_result = @the_num ** 2
      render({ :template => "calc_templates/square_results" })
    end

    def new_square_root_calc
      render({ :template => "calc_templates/new_square_root_calc" })
    end

    def square_root_results
      @the_num = params.fetch("users_number").to_f
      @the_result = @the_num ** 0.5
      render({ :template => "calc_templates/square_root_results" })
    end

    def new_payment_calc
      render({ :template => "calc_templates/new_payment_calc" })
    end

    def payment_results
      @display_apr = params.fetch("users_apr")
      @display_years = params.fetch("users_years")
      @display_principal = params.fetch("users_principal")
      
      
      @the_apr = params.fetch("users_apr").to_f / 1200
      @the_num_years = params.fetch("users_years").to_i * 12
      @the_principal = params.fetch("users_principal").to_f
      
      @the_numerator = @the_apr * @the_principal
      @the_denominator = 1 - (1+@the_apr) ** (-@the_num_years)
      
      @the_monthly_payment = @the_numerator / @the_denominator

      render({ :template => "calc_templates/payment_results" })
    end

    def new_random_calc
      render({ :template => "calc_templates/new_random_calc" })
    end

    def random_results
      @user_min = params.fetch("user_min").to_f
      @user_max = params.fetch("user_max").to_f
      @random_number = rand(@user_min..@user_max).to_f
      render({ :template => "calc_templates/random_results" })
    end
  end
