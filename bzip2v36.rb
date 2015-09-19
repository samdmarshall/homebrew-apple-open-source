class Bzip2v36 < Formula
  desc "bzip2 (36) package from opensource.apple.com"
  url "https://opensource.apple.com/tarballs/bzip2/bzip2-36.tar.gz"
  sha256 "93a024cc174384152a86d15cd312a92e800049b4017b18d1b998abd8a35e62af"
  
  depends_on :xcode
  depends_on "samdmarshall/formulae/privatesdks"
  
  def install
    xcodebuild "SDKROOT=macosx10.10", "ADDITIONAL_SDKS=~/Library/Developer/AdditionalSDKs/PrivateSDK10.10.sparse.sdk", "HEADER_SEARCH_PATHS=~/Library/Developer/AdditionalSDKs/PrivateSDK10.10.sparse.sdk/usr/local/include ~/Library/Developer/AdditionalSDKs/PrivateSDK10.10.sparse.sdk/System/Library/Frameworks/Kernel.framework/Privateheaders"
    bin.install "build/Release/bzip2"
    bin.install "build/Release/bzip2recover"
    lib.install "build/Release/libbz2.1.0.dylib"
  end
  
end