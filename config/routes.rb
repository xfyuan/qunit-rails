QUnit::Rails::Engine.routes.draw do
  root to: "test#index"
  get "index", controller: "test"
end

Rails.application.routes.draw do
  unless Rails.application.routes.named_routes.get(:q_unit_rails)
    mount QUnit::Rails::Engine => "/qunit"
  end
end
