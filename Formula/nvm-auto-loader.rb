class NvmAutoLoader < Formula
  desc "Automatically loads Node versions based on .nvmrc by using nvm (supports zsh and bash)"
  homepage "https://github.com/woongbae-ra/nvm-auto-loader#readme"
  url "https://github.com/woongbae-ra/nvm-auto-loader/archive/v0.1.0.tar.gz"
  head "https://github.com/woongbae-ra/nvm-auto-loader.git"
  sha "867d0ca4b4c0471b82a4f8b41f90c05e4db40a288303d3a326b727bc11cf7127"

  def install
    bin.install "nvm-auto-loader.sh"
  end

  def caveats
    <<~EOS
      To finish the installation, you need to source the script in your shell:
      
      For zsh, add the following to your ~/.zshrc:
        source #{opt_prefix}/bin/nvm-auto-loader.sh
      
      For bash, add the following to your ~/.bash_profile or ~/.bashrc:
        source #{opt_prefix}/bin/nvm-auto-loader.sh
    EOS
  end

  test do
    # Here you can define tests for your utility.
  end
end