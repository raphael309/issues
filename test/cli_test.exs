defmodule CliTest do
  use ExUnit.Case
  doctest Issues
  
  import Issues.CLI

  test "Basic help test" do
    assert parse_args([ "--help", "anything" ]) == :help
	assert parse_args([ "-h", "anything" ]) == :help
  end
  
  test "Values test" do
    assert parse_args([ "user", "project", "100" ]) == { "user", "project", 100 }
  end
  
  test "Default value test" do
    assert parse_args([ "user", "project" ]) == { "user", "project", 4 }
  end
end
