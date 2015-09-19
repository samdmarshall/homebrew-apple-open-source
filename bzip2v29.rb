class Bzip2v29 < Formula
  desc "bzip2 (29) package from opensource.apple.com"
  url "https://opensource.apple.com/tarballs/bzip2/bzip2-29.tar.gz"
  sha256 "618e4eae4c09007efe740c7b8b4f49f815de338c5a24b0e66e9f5e79232fef01"
  
  depends_on :xcode
  depends_on "samdmarshall/formulae/privatesdks"
  
  def install
    xcodebuild "SDKROOT=macosx10.10", "ADDITIONAL_SDKS=~/Library/Developer/AdditionalSDKs/PrivateSDK10.10.sparse.sdk", "HEADER_SEARCH_PATHS=~/Library/Developer/AdditionalSDKs/PrivateSDK10.10.sparse.sdk/usr/local/include ~/Library/Developer/AdditionalSDKs/PrivateSDK10.10.sparse.sdk/System/Library/Frameworks/Kernel.framework/Privateheaders"
    bin.install "build/Release/bzip2"
    bin.install "build/Release/bzip2recover"
    lib.install "build/Release/libbz2.1.0.dylib"
  end
  
end