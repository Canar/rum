Gem::Specification.new do |s|
	s.name         =  'rumu'
	s.version      =  '0.4.2'
	s.summary      =  '(ru)by (mu)usic - a minimal ffmpeg-based gapless audio playlist player'
	s.description  =  'rumu is an aggressively minimized audio player that plays a playlist gaplessly leveraging command-line ffmpeg and pipes. After a quit, it will return to where it left off when run next.'
	s.author       =  'Benjamin Cook'
	s.email        =  'root@baryon.it'
	s.files        << 'bin/rumu'
	s.executables  << 'rumu'
	s.homepage     =  'https://github.com/Canar/rumu'
	s.requirements << 'ffmpeg'
	s.required_ruby_version = '>= 3.0'
	s.add_runtime_dependency 'pulseaudio_simple_fiddle', '~> 0.0', '>= 0.0.0'

end
