require 'test_helper'

class ListTreatmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_treatment = list_treatments(:one)
  end

  test "should get index" do
    get list_treatments_url, as: :json
    assert_response :success
  end

  test "should create list_treatment" do
    assert_difference('ListTreatment.count') do
      post list_treatments_url, params: { list_treatment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show list_treatment" do
    get list_treatment_url(@list_treatment), as: :json
    assert_response :success
  end

  test "should update list_treatment" do
    patch list_treatment_url(@list_treatment), params: { list_treatment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy list_treatment" do
    assert_difference('ListTreatment.count', -1) do
      delete list_treatment_url(@list_treatment), as: :json
    end

    assert_response 204
  end
end
