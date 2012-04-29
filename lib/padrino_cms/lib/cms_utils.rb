module CmsUtils

  def cmsify contents=@contents, opts={}
    self.class.cmsify contents, opts
  end

  def self.cmsify(contents, opts)
    opts[:path] ||= "/"
    opts[:field] ||= "body"
    value = (contents.empty? or contents.first.nil?) ? '' : contents.first.send(opts[:field])
    #
    # logger.debug "@current_account : #{@current_account}, role : #{@current_account.role}, contents : #{contents}"
    if @current_account and @current_account.role == "admin"
      if contents.empty? or contents.first.nil?
        label = "add #{opts[:field]}"
        url = "/admin/contents/new?path=#{opts[:path]}"
      else
        label = 'edit'
        url = "/admin/contents/edit/#{contents.first.to_param}"
      end
      value += %Q(<a href="#{url}" class="cmsified" title="#{label}"><img src="/admin/images/edit.png" alt="#{label}"/></a>)
    end
    value
  end

  def default_path request
    self.class.default_path request
  end

  # Returns the default key for the current request, this will be
  # request.route.path if present otherwise request.path
  #
  def self.default_path request
    raise "Unable to access current request." if request.nil?

    if request.respond_to? 'route' and request.route.is_a? HttpRouter::Route
      request.route.path
    else
      request.path_info
    end
  end

  def current_account session_id
    self.class current_account session_id
  end

  def self.current_account session_id
    @current_account = Account.find_by_id(session_id) if defined?(Account)
  end

end
