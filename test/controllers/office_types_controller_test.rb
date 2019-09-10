require 'test_helper'

class OfficeTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @office_type = office_types(:one)
  end

  test "should get index" do
    get office_types_url
    assert_response :success
  end

  test "should get new" do
    get new_office_type_url
    assert_response :success
  end

  test "should create office_type" do
    assert_difference('OfficeType.count') do
      post office_types_url, params: { office_type: { officeType_id: @office_type.officeType_id, officeType_name: @office_type.officeType_name } }
    end

    assert_redirected_to office_type_url(OfficeType.last)
  end

  test "should show office_type" do
    get office_type_url(@office_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_office_type_url(@office_type)
    assert_response :success
  end

  test "should update office_type" do
    patch office_type_url(@office_type), params: { office_type: { officeType_id: @office_type.officeType_id, officeType_name: @office_type.officeType_name } }
    assert_redirected_to office_type_url(@office_type)
  end

  test "should destroy office_type" do
    assert_difference('OfficeType.count', -1) do
      delete office_type_url(@office_type)
    end

    assert_redirected_to office_types_url
  end
end
