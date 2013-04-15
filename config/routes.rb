YearbookApp::Application.routes.draw do
  get('/am', { :controller => 'Students', :action => 'morning' })
end
