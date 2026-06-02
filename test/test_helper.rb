# Configure Rails Environment
ENV["RAILS_ENV"] ||= "test"

require_relative "../config/environment"
require "rails/test_help"
require "debug"

require "rails/test_unit/reporter"
Rails::TestUnitReporter.executable = "bin/test"

TAILWINDCSS_TEST_APP_ROOT = Dir.mktmpdir
Rails::Generators.templates_path << File.join(TAILWINDCSS_TEST_APP_ROOT, "lib/templates")

class ActiveSupport::TestCase
  fixtures :all
  def setup
    FileUtils.rm_rf(TAILWINDCSS_TEST_APP_ROOT)
    FileUtils.mkdir_p(TAILWINDCSS_TEST_APP_ROOT)
  end

  def teardown
    FileUtils.rm_rf(TAILWINDCSS_TEST_APP_ROOT)
  end
end

require_relative "../lib/tailwindcss-rails"
