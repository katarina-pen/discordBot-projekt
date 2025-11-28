require 'minitest/autorun'
require 'minitest/reporters'

# Aktivera SpecReporter för färgglad output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# Ladda test-hjälpare (mocks)
require_relative 'mock_event'