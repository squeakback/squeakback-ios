Pod::Spec.new do |s|
  s.name         = "SqueakBack"
  s.version      = "1.0.6"
  s.summary      = "Interactive feedback for your app"
  s.homepage     = "https://squeakback.com/"
  s.license      = {
      :type => 'Commercial',
      :text => <<-LICENSE
                Copyright (C) 2015 Pelfunc, Inc.
                Permission is hereby granted to use this framework as is, modifications are not allowed.
                All rights reserved.
				
				THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
				IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
				FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
				AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
				LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
				OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
				THE SOFTWARE.
      LICENSE
    }
  s.author       = { "SqueakBack" => "support@squeakback.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/squeakback/squeakback-ios.git", :tag => s.version.to_s }
  s.source_files = 'SqueakBack.framework/Headers/*.{h}'
  s.ios.vendored_frameworks = 'SqueakBack.framework'
  s.preserve_paths = 'SqueakBack.framework/*'
  s.frameworks   = 'QuartzCore', 'CoreGraphics', 'CoreMotion', 'SystemConfiguration', 'Foundation', 'AudioToolbox', 'UIKit', 'SqueakBack'
  s.libraries    = 'c++'
  s.xcconfig     =  { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SqueakBack/"', 'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11', 'CLANG_CXX_LIBRARY' => 'libc++' }
  s.requires_arc = true
end
