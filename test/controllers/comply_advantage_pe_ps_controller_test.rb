require 'test_helper'

class ComplyAdvantagePePsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comply_advantage_pep = comply_advantage_peps(:one)
  end

  test "should get index" do
    get comply_advantage_peps_url
    assert_response :success
  end

  test "should get new" do
    get new_comply_advantage_pep_url
    assert_response :success
  end

  test "should create comply_advantage_pep" do
    assert_difference('ComplyAdvantagePep.count') do
      post comply_advantage_peps_url, params: { comply_advantage_pep: { company_id: @comply_advantage_pep.company_id, person_name: @comply_advantage_pep.person_name } }
    end

    assert_redirected_to comply_advantage_pep_url(ComplyAdvantagePep.last)
  end

  test "should show comply_advantage_pep" do
    get comply_advantage_pep_url(@comply_advantage_pep)
    assert_response :success
  end

  test "should get edit" do
    get edit_comply_advantage_pep_url(@comply_advantage_pep)
    assert_response :success
  end

  test "should update comply_advantage_pep" do
    patch comply_advantage_pep_url(@comply_advantage_pep), params: { comply_advantage_pep: { company_id: @comply_advantage_pep.company_id, person_name: @comply_advantage_pep.person_name } }
    assert_redirected_to comply_advantage_pep_url(@comply_advantage_pep)
  end

  test "should destroy comply_advantage_pep" do
    assert_difference('ComplyAdvantagePep.count', -1) do
      delete comply_advantage_pep_url(@comply_advantage_pep)
    end

    assert_redirected_to comply_advantage_peps_url
  end
end
