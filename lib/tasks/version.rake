
task :create_version do
  desc "create VERSION."

  version_file   = "#{Rails.root}/config/initializers/version.rb"
  git_version    = `git describe --always --tags`
  version_string = "VERSION = #{git_version}\n"
  
  File.open(version_file, "w") {|f| f.print(version_string)}
  $stderr.print(version_string)
end
