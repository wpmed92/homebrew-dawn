class Dawn < Formula
    desc "Dawn: A WebGPU implementation"
    homepage "https://dawn.googlesource.com/dawn"
    url "https://github.com/wpmed92/pydawn/releases/download/v0.1.6/libwebgpu_dawn.dylib"
    sha256 "7e87c7acefda8b6af1a1c5debfedcf62958311284b8fd8d9bcf93e312e6636e3"
    license "BSD-3-Clause"
  
    def install
      lib.install "libwebgpu_dawn.dylib"
    end
  
    test do
      assert_predicate lib/"libwebgpu_dawn.dylib", :exist?, "libwebgpu_dawn.dylib should exist"
    end
  end
  