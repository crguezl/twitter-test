desc "Executes the client"
task :default => :user

desc "Executes the client for a given user"
task :user, :name do |t, args|
  name = args[:name] || 'timoreilly'
  sh "ruby twitt.rb #{name}"
end

# un comentario
