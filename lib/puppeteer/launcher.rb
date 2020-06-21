require_relative './launcher/base'
require_relative './launcher/browser_options'
require_relative './launcher/chrome'
require_relative './launcher/chrome_arg_options'
require_relative './launcher/launch_options'

# https://github.com/puppeteer/puppeteer/blob/main/src/node/Launcher.ts
module Puppeteer::Launcher
  # @param project_root [String]
  # @param prefereed_revision [String]
  # @param is_puppeteer_core [String]
  # @param product [String] 'chrome' or 'firefox' (not implemented yet)
  # @return [Puppeteer::Launcher::Chrome]
  module_function def new(project_root:, preferred_revision:, is_puppeteer_core:, product:)
    if product == 'firefox'
      raise NotImplementedError.new('FirefoxLauncher is not implemented yet.')
    end

    Chrome.new(
      project_root: project_root,
      preferred_revision: preferred_revision,
      is_puppeteer_core: is_puppeteer_core,
    )
  end
end
