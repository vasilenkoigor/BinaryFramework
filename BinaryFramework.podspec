Pod::Spec.new do |s|  
    s.name              = 'BinaryFramework'
    s.version           = '0.0.8'
    s.summary           = 'Summary'
    s.homepage          = 'https://homepage.com/'

    s.author            = { 'Name' => 'Igor Vasilenko' }
    s.license           = { :type => 'MIT', :file => 'LICENSE' }

    s.platform          = :ios
    s.ios.deployment_target = '12.0'

    s.source            = { :http => "https://github.com/vasilenkoigor/BinaryFramework/releases/download/#{s.version}/BinaryFramework.zip" }
    s.ios.vendored_frameworks = 'BinaryFramework.framework'

end
