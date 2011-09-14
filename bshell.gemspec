project_name = 'bshell'
Gem::Specification.new do |s|
  s.name      = project_name
  s.version   = '0.0.2'
  s.date      = '2011-09-14'

  s.homepage    = "https://github.com/jjb/#{project_name}/"
  s.summary     = "bshell lets you enter into a shell where all commands happen in the bundle exec environment."

  s.authors           = ['John Joseph Bachir']
  s.email             = 'j@jjb.cc'
  s.rubyforge_project = project_name

  s.require_path      = '.'
  s.executables       = [project_name]

  s.has_rdoc          = false
end
