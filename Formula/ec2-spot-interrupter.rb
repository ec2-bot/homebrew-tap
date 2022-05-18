# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ec2SpotInterrupter < Formula
  desc "A simple CLI tool that triggers Amazon EC2 Spot Interruption Notifications and Rebalance Recommendations."
  homepage "https://github.com/aws/amazon-ec2-spot-interrupter"
  version "0.0.4"
  license "Apache-2"

  on_macos do
    if Hardware::CPU.arm?
      url "http://github.com/aws/amazon-ec2-spot-interrupter/releases/v0.0.4/ec2-spot-interrupter_0.0.4_Darwin_arm64.tar.gz"
      sha256 "80801a625edc31e93b5b1227f9cde74245cefefe7602556b0f27bed8e0746459"

      def install
        bin.install "ec2-spot-interrupter"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/aws/amazon-ec2-spot-interrupter/releases/v0.0.4/ec2-spot-interrupter_0.0.4_Darwin_amd64.tar.gz"
      sha256 "a60ba681666bc8790d568128da84d7c0ca20ab04a0457c7b688bee5d79a06eb6"

      def install
        bin.install "ec2-spot-interrupter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "http://github.com/aws/amazon-ec2-spot-interrupter/releases/v0.0.4/ec2-spot-interrupter_0.0.4_Linux_armv6.tar.gz"
      sha256 "95e5f2477e5e490f804fd37e7c1cba8bda35020f3ed5a39576691c8e8e7a4af2"

      def install
        bin.install "ec2-spot-interrupter"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/aws/amazon-ec2-spot-interrupter/releases/v0.0.4/ec2-spot-interrupter_0.0.4_Linux_amd64.tar.gz"
      sha256 "b9581c6768c8985e0a9b3ac3b70dbfa4c5b8b9d786d191a711da445acb823f77"

      def install
        bin.install "ec2-spot-interrupter"
      end
    end
  end

  def caveats; <<~EOS
    ec2-spot-interrupter --interactive
  EOS
  end

  test do
    system "#{bin}/program --version"
  end
end
