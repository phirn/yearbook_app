YearbookApp::Application.routes.draw do
  get('/courses/:id_number', { :controller => 'Students', :action => 'section' })
end
