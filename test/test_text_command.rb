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

  def test_text_command_responds_with_text
    command = TextCommand.new(
      name: "greet",
      description: "Greets user",
      text: "Welcome!"
    )
    mock_event = MockEvent.new

    command.execute(mock_event)

    assert_equal 1, mock_event.responses.length
    assert_equal "Welcome!", mock_event.responses.first
  end

  def test_text_command_can_take_different_text
    command1 = TextCommand.new(
      name: "test1",
      description: "Detta är test 1",
      text: "Testing, testing 1"
    )
     mock_event1 = MockEvent.new

      command1.execute(mock_event1)
      assert_equal 1, mock_event1.responses.length
      assert_equal "Testing, testing 1", mock_event1.responses.first

    command2 = TextCommand.new(
      name: "test2",
      description: "Detta är test 2",
      text: "Testing, testing 2"
    )

     mock_event2 = MockEvent.new

     command2.execute(mock_event2)
     assert_equal 1, mock_event2.responses.length
     assert_equal "Testing, testing 2", mock_event2.responses.first


  end


end