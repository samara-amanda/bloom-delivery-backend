class ApplicationController < ActionController::API
    include ::ActionController::Cookies 
    before_action :allow_cross_domain_access
    after_action :cors_set_access_control_headers
    
    def allow_cross_domain_access
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Headers'] = 'GET, POST, PUT, DELETE, OPTIONS'
        headers['Access-Control-Allow-Methods'] = %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(',')
        headers['Access-Control-Max-Age'] = '1728000'
    end
    def cors_set_access_control_headers
            headers['Access-Control-Allow-Origin'] = '*'
            headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
            headers['Access-Control-Allow-Headers'] = %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(',')
            headers['Access-Control-Max-Age'] = "1728000"
    end

    def current_user
       User.find_by_id(session[:user_id])
    end

    def logged_in?
        !!current_user
    end
end
