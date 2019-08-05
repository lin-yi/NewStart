Pod::Spec.new do |s|
    s.name         = "NewStart"
    s.version      = "0.0.1"
    s.ios.deployment_target = '10.0'
    s.summary      = "New Start 是一个iOS组件化开发的组件之一"
    s.homepage     = "https://github.com/lin-yi/NewStart.git"
    s.license              = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "linyiyiyi" => "linyi_ios@icloud.com" }
    s.source       = { :git => "https://github.com/lin-yi/NewStart.git", :tag => s.version }
    s.source_files  = "Classes/*.{h,m}"
    s.requires_arc = true
    s.description  = <<-DESC 
                          New Start 是一个iOS组件化开发的组件之一New Start 是一个iOS组件化开发的组件之一
                   DESC
end