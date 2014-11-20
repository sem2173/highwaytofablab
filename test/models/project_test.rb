require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  test "have valid Fabricator" do
    assert Fabricate.build(:project).valid?, "Project fabric should be valid"
  end

  test "invalid without name" do
    assert Fabricate.build(:project, name: nil).invalid?, "Project must have a name"
  end
end