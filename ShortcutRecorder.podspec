Pod::Spec.new do |s|
  s.name = 'ShortcutRecorder'
  s.version = '3.0'
  s.summary = 'The best control to record shortcuts on macOS'
  s.homepage = 'https://github.com/Kentzo/ShortcutRecorder'
  s.license = "CC BY 3.0"
  s.author = { 'Ilya Kulakov' => 'kulakov.ilya@gmail.com' }

  s.source = { :git => 'https://github.com/Kentzo/ShortcutRecorder.git', :branch => 'master' }

  s.platform = :osx
  s.osx.deployment_target = "10.11"
  s.frameworks = 'Carbon', 'Cocoa'

  s.subspec 'Core' do |core|
    core.source_files = 'Library/*.{h,m}'
    core.resource_bundles = { "ShortcutRecorder" => ['Resources/*.lproj', 'Resources/*.png'] }
    core.requires_arc = true
  end
end
