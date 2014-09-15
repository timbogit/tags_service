config_file = File.join( File.dirname(__FILE__) + '/../swagger-yard.yml' )
conf = YAML.load_file(config_file)[Rails.env]

unless Rails.env.test?
  SwaggerYard.configure do |config|
    config.swagger_version = "1.2"
    config.api_version = "1.0"
    config.reload = Rails.env.development?

    # where your swagger spec json will show up
    config.swagger_spec_base_path = "http://#{conf['host']}/swagger/api"
    # where your actual api is hosted from
    config.api_base_path = "http://#{conf['host']}/api/v1"
  end
end
