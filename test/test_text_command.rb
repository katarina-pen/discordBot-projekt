require_relative 'spec_helper'
require_relative '../lib/text_command'
require_relative '../lib/command'

class TestTextCommand < Minitest::Test
  def test_text_command_can_be_created
    command = TextCommand.new(
      name: "test",
      description: "Test command",
      text: "Test response"
    )

    assert_instance_of TextCommand, command
    assert_kind_of Command, command  # Ärver från Command
    assert_equal "test", command.name
    assert_equal "Test command", command.description
  end
end