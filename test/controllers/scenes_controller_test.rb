require 'test_helper'

class ScenesControllerTest < ActionController::TestCase
  setup do
    @scene = scenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scene" do
    assert_difference('Scene.count') do
      post :create, scene: { chapitre_id: @scene.chapitre_id, lieu: @scene.lieu, numero: @scene.numero, periode: @scene.periode, personne_id: @scene.personne_id, recit: @scene.recit }
    end

    assert_redirected_to scene_path(assigns(:scene))
  end

  test "should show scene" do
    get :show, id: @scene
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scene
    assert_response :success
  end

  test "should update scene" do
    patch :update, id: @scene, scene: { chapitre_id: @scene.chapitre_id, lieu: @scene.lieu, numero: @scene.numero, periode: @scene.periode, personne_id: @scene.personne_id, recit: @scene.recit }
    assert_redirected_to scene_path(assigns(:scene))
  end

  test "should destroy scene" do
    assert_difference('Scene.count', -1) do
      delete :destroy, id: @scene
    end

    assert_redirected_to scenes_path
  end
end
