require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase

	test "index" do
		project = Fabricate(:project)
		get :index
		assert_response :success
		assert_equal [project], assigns(:projects)
	end

	test "new" do
		get :new
		assert_response :success
	end

  test "create" do
    post :create, project: Fabricate.attributes_for(:project, name: 'truc')

    assert_equal 1, Project.count
    project = Project.first
    assert_response :redirect
    assert_redirected_to project_path(project)
    assert_equal 'truc', project.name
    assert_equal "projet créé avec succès", flash[:success]
  end

  test "error on create" do
    post :create, project: {name: ""}
    assert_equal 0, Project.count
    assert_redirected_to new_project_path 
    assert_equal "Erreur sur la création du projet", flash[:error]
  end

  test "show" do
    project = Fabricate(:project)
    get :show, id: project.id
    assert_response :success
    assert_equal project, assigns(:project)
  end
end