require "test_helper"

class ArboristsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arborist = arborists(:one)
  end

  test "should get index" do
    get arborists_url
    assert_response :success
  end

  test "should get new" do
    get new_arborist_url
    assert_response :success
  end

  test "should create arborist" do
    assert_difference("Arborist.count") do
      post arborists_url, params: { arborist: { etv_certified: @arborist.etv_certified, first_name: @arborist.first_name, isa_certified: @arborist.isa_certified, last_name: @arborist.last_name, skills: @arborist.skills, zipcode: @arborist.zipcode } }
    end

    assert_redirected_to arborist_url(Arborist.last)
  end

  test "should show arborist" do
    get arborist_url(@arborist)
    assert_response :success
  end

  test "should get edit" do
    get edit_arborist_url(@arborist)
    assert_response :success
  end

  test "should update arborist" do
    patch arborist_url(@arborist), params: { arborist: { etv_certified: @arborist.etv_certified, first_name: @arborist.first_name, isa_certified: @arborist.isa_certified, last_name: @arborist.last_name, skills: @arborist.skills, zipcode: @arborist.zipcode } }
    assert_redirected_to arborist_url(@arborist)
  end

  test "should destroy arborist" do
    assert_difference("Arborist.count", -1) do
      delete arborist_url(@arborist)
    end

    assert_redirected_to arborists_url
  end
end
