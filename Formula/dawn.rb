class Dawn < Formula
  desc "Dawn: A WebGPU implementation"
  homepage "https://dawn.googlesource.com/dawn"

  if Hardware::CPU.arm?
    url "https://github.com/wpmed92/pydawn/releases/download/v0.1.7/libwebgpu_dawn_arm.dylib"
    sha256 "7e87c7acefda8b6af1a1c5debfedcf62958311284b8fd8d9bcf93e312e6636e3"
  else
    url "https://github.com/wpmed92/pydawn/releases/download/v0.1.7/libwebgpu_dawn_x86_64.dylib"
    sha256 "db0f0ee88de43d67948e12a7bdc15f8b886fa2cab5eb51ca4496faa8ec87ac09"
  end

  license "BSD-3-Clause"

  def install
    lib.install "libwebgpu_dawn_#{Hardware::CPU.arm? ? "arm" : "x86_64"}.dylib" => "libwebgpu_dawn.dylib"
  end

  test do
    assert_predicate lib/"libwebgpu_dawn.dylib", :exist?, "libwebgpu_dawn.dylib should exist"
  end
end
