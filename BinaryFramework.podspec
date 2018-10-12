Pod::Spec.new do |s|  
    s.name              = 'BinaryFramework'
    s.version           = '0.0.10'
    s.summary           = 'Summary'
    s.homepage          = 'https://homepage.com/'

    s.author            = { 'Name' => 'Igor Vasilenko' }
    s.license           = { :type => 'MIT', :file => 'LICENSE' }

    s.platform     = :ios, '12.0'
    s.requires_arc = true
    s.frameworks          = ["Foundation", "UIKit", "PassKit"]

    s.source            = { :http => "https://github.com/vasilenkoigor/BinaryFramework/releases/download/#{s.version}/BinaryFramework.zip" }
    s.source_files = 'BinaryFramework.framework/Headers/*.{h}'
    s.vendored_frameworks = 'BinaryFramework.framework'
    s.preserve_paths =  'BinaryFramework.framework/*'
end
