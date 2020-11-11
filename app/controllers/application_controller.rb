class ApplicationController < ActionController::Base
helper_method :current_visitor
def current_visitor
    @visitor = Visitor.find_by(id: cookies[:visitor_id])
end  

end
