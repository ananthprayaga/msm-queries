Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "director", :action => "show_all" })
  get("/directors/youngest", { :controller => "director", :action => "youngest" })
  get("/directors/eldest", { :controller => "director", :action => "eldest" })
  get("/directors/:director_id", { :controller => "director", :action => "details" })
  get("/movies", { :controller => "movie", :action => "show_all" })
  get("/movies/:movie_id", { :controller => "movie", :action => "details" })
  get("/actors", { :controller => "actor", :action => "show_all" })
  get("/actors/:actor_id", { :controller => "actor", :action => "details" })
end
