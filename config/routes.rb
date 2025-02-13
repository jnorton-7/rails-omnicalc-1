Rails.application.routes.draw do

get("/", { :controller => "calc", :action => "new_square_calc"})

get("/square/new", { :controller => "calc", :action => "new_square_calc"})

get("/square/results", { :controller => "calc", :action => "square_results"})

get("/square_root/new", { :controller => "calc", :action => "new_square_root_calc"})

get("/square_root/results", { :controller => "calc", :action => "square_root_results"})

get("/payment/new", { :controller => "calc", :action => "new_payment_calc"})

get("/payment/results", { :controller => "calc", :action => "payment_results"})

get("/random/new", { :controller => "calc", :action => "new_random_calc"})

get("/random/results", { :controller => "calc", :action => "random_results"})



end
