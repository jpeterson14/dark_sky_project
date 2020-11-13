class ApplicationController < ActionController::Base

    helper_method :current_visitor, :log_in, :log_out

 def current_visitor
    @visitor = Visitor.find_by(id: session[:visitor_id])
 end  

 def log_in(visitor)
    session[:visitor_id] = visitor.id
 end

 def log_out
    session.delete(:user_id)
    @current_user = nil
 end

end
