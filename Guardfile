guard 'spork', :rspec_env => { 'RAILS_ENV' => 'test' }, :wait => 120 do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.*\.rb$})
  watch(%r{^config/initializers/.*\.rb$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
end

guard 'rspec', :version => 2, :all_after_pass => false, :cli => '--drb' do
  watch ('app/views/users/')                                        { "spec/requests/user_pages_spec.rb" }
  watch ('spec/support/utilities.rb')                               { "spec" }
  watch (%r{^app/views/layouts/})                                   { "spec/requests" }
  watch (%r{^app/(.+)\.rb$})                                        { |m| "spec/#{m[1]}_spec.rb" }
  watch (%r{^app/helpers/})                                         { "spec" }
  watch ('spec/spec_helper.rb')                                     { "spec" }                                    
  watch ('config/routes.rb')                                        { "spec/routing" }                               
  watch ('app/controllers/application_controller.rb')               { "spec/controllers" }  
  watch (%r{^spec/.+_spec\.rb$})                                              
  watch (%r{^app/views/(.+)/})                                      { |m| "spec/requests/#{m[1]}_spec.rb" }        
  watch (%r{^app/controllers/(.+)_(controller)\.rb$}) do |m|
                                                                    ["spec/routing/#{m[1]}_routing_spec.rb",                                 
                                                                     "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb",
                                                                     "spec/acceptance/#{m[1]}_spec.rb",
                                                                     "spec/requests/#{m[1]}_spec.rb"]
  end
end
