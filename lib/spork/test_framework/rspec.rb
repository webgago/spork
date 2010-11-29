class Spork::TestFramework::RSpec < Spork::TestFramework
  DEFAULT_PORT = 8989
  HELPER_FILE = File.join(Dir.pwd, "spec/spec_helper.rb")

  def run_tests(argv, stderr, stdout)
    ::RSpec::Runner::CommandLine.run(
      ::RSpec::Runner::OptionParser.parse(
        argv,
        stderr,
        stdout
      )
    )
  end
end
