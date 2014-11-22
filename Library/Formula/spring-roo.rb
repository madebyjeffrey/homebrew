require 'formula'

class SpringRoo < Formula
  homepage 'http://www.springsource.org/spring-roo'
  url 'http://spring-roo-repository.springsource.org.s3.amazonaws.com/release/ROO/spring-roo-1.3.0.RELEASE.zip'
  sha1 'bae2df35a96eff5c348bb8f00ce739572c33959e'
  version '1.3.0'

  def install
    rm Dir["bin/*.bat"]
    File.rename "bin/roo.sh", "bin/roo"
    prefix.install %w[annotations bin bundle conf docs legal samples]
  end
end
