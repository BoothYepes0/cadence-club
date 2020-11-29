Rails.application.routes.draw do

  # Home Page
  get("/", { :controller => "homepage", :action => "index" })

  # Routes for the Ride resource:

  # CREATE
  post("/insert_ride", { :controller => "rides", :action => "create" })
          
  # READ
  get("/rides", { :controller => "rides", :action => "index" })
  
  get("/rides/:path_id", { :controller => "rides", :action => "show" })
  
  # UPDATE
  
  post("/modify_ride/:path_id", { :controller => "rides", :action => "update" })
  
  # DELETE
  get("/delete_ride/:path_id", { :controller => "rides", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # SHOW ALL USERS

  get("/users", { :controller => "user_authentication", :action => "show" })

  #SHOW DETAILS OF ONE PARTICULAR USER

  get("/users/:path_id", { :controller => "user_authentication", :action => "show_user_profile" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
