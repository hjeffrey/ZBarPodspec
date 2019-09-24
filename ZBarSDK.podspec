#
# Be sure to run `pod lib lint iReaderKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZBarSDK'
  s.version          = '1.3.1-WKWebView'
  s.summary          = 'QR and barcode scan library.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ZBar is an open source software suite for reading bar codes from various sources, such as video streams, image files and raw intensity sensors. It supports many popular symbologies (types of bar codes) including EAN-13/UPC-A, UPC-E, EAN-8, Code 128, Code 39, Interleaved 2 of 5 and QR Code.
                       DESC

  s.homepage         = 'http://zbar.sourceforge.net/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'GNU LGPL 2.1'
  s.author           = { 'Jeffrey Jia' => 'jiayuhui@zhangyue.com' }
  s.source           = { :git => 'https://github.com/hjeffrey/ZBar.git', :branch => 'iPhoneSDK-1.3.1-wkwebview' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.resources    = 'iphone/res/{zbar-*.png,zbar-help.html}'
  
  s.public_header_files = "iphone/**/**/*.h", "include/*.h"
  s.source_files = "include/zbar.h", "zbar/**/*.h", "iphone/*.h", "iphone/include/**/*.h", "zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.c", "zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.c", "zbar/qrcode/*.c", "iphone/*.m"
  s.resources = "iphone/res/{zbar-*.png,zbar-help.html}"

  s.frameworks = "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "QuartzCore", "WebKit"
  s.libraries = "iconv"
  s.prefix_header_file = "iphone/include/prefix.pch"
  s.compiler_flags = "-w"
  s.requires_arc = false
  s.pod_target_xcconfig = { "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphoneos*][arch=*]" => "ZBarReaderViewImpl_Simulator.m", "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphonesimulator*][arch=*]" => "ZBarReaderViewImpl_Capture.m ZBarCaptureReader.m", "GCC_PREPROCESSOR_DEFINITIONS" => "NDEBUG=1" }

end
