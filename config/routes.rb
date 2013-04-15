YearbookApp::Application.routes.draw do
  get('/am', { :controller => 'Students', :action => 'morning' })
  get('/beghtml', { :controller => 'Students', :action => 'beginnerhtml' })
end
