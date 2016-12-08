Rails.application.routes.draw do
  mount JanusAdminMonitorToken::Engine => "/janus_admin_monitor_token"
end
