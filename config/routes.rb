Rails.application.routes.draw do
  
  get("/", { :controller => "main", :action => "square"})

  get("/square/new", { :controller => "main", :action => "square"})

  get("/square/results", { :controller => "main", :action => "square_results"})

  get("/square_root/new", { :controller => "main", :action => "root"})

  get("/square_root/results", { :controller => "main", :action => "root_results"})

  get("/payment/new", { :controller => "main", :action => "payment"})

  get("/payment/results", { :controller => "main", :action => "payment_results"})

  get("/random/new", { :controller => "main", :action => "random"})

  get("/random/results", { :controller => "main", :action => "random_results"})


end
