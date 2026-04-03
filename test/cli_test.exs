defmodule CliTest do
  use ExUnit.Case
  doctest Issues
  
  import Issues.CLI

  test "Basic help test" do
    assert parse_args([ "--help", "anything" ]) == :help
	assert parse_args([ "-h", "anything" ]) == :help
  end
end
