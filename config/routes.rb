Rails.application.routes.draw do

  get("/", { :controller => "places", :action => "index" })

  # Places
  get("/places", { :controller => "places", :action => "index" })
  get("/places/new", { :controller => "places", :action => "new" })
  post("/places", { :controller => "places", :action => "create" })
  get("/places/:id", { :controller => "places", :action => "show" })

  # Entries
  get("/places/:place_id/entries/new", { :controller => "entries", :action => "new" })
  post("/entries", { :controller => "entries", :action => "create" })

  # Signup
  get("/signup", { :controller => "users", :action => "new" })
  post("/users", { :controller => "users", :action => "create" })

  # Login / Logout
  get("/login", { :controller => "sessions", :action => "new" })
  post("/login", { :controller => "sessions", :action => "create" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

end