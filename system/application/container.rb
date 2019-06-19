require "dry/system/container"

class Application < Dry::System::Container
  configure do |config|
    config.root = Pathname(__FILE__).join("../..").realpath.dirname.freeze
    config.auto_register = "lib"
  end

  load_paths!("lib")
end
