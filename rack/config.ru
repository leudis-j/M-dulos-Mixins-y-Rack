# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    headers = { 'Content-Type' => 'text/html; charset=utf-8' }
    case env['REQUEST_PATH']
    when '/'      then [202, headers, ['<h1> INDEX </h1>']]
    when '/index' then [200, headers, ['<h1> Estás en el Index! </h1>']]
    when '/otro'  then [200, headers, ['<p> Estás en otro landing</p>']]
    else               [404, headers, [File.read('404.html')]]
    end
  end
end
run MiPrimeraWebApp.new
