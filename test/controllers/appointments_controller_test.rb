require 'test_helper'

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment = appointments(:one)
  end

  test "should get index" do
    get appointments_url
    assert_response :success
  end

  test "should get new" do
    get new_appointment_url
    assert_response :success
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      post appointments_url, params: { appointment: { appointment_Purpose: @appointment.appointment_Purpose, appointment_date: @appointment.appointment_date, doctor_id: @appointment.doctor_id, doctor_name: @appointment.doctor_name, doctor_surname: @appointment.doctor_surname, end_Time: @appointment.end_Time, office_id: @appointment.office_id, patient_id: @appointment.patient_id, patient_name: @appointment.patient_name, patient_surname: @appointment.patient_surname, start_Time: @appointment.start_Time } }
    end

    assert_redirected_to appointment_url(Appointment.last)
  end

  test "should show appointment" do
    get appointment_url(@appointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointment_url(@appointment)
    assert_response :success
  end

  test "should update appointment" do
    patch appointment_url(@appointment), params: { appointment: { appointment_Purpose: @appointment.appointment_Purpose, appointment_date: @appointment.appointment_date, doctor_id: @appointment.doctor_id, doctor_name: @appointment.doctor_name, doctor_surname: @appointment.doctor_surname, end_Time: @appointment.end_Time, office_id: @appointment.office_id, patient_id: @appointment.patient_id, patient_name: @appointment.patient_name, patient_surname: @appointment.patient_surname, start_Time: @appointment.start_Time } }
    assert_redirected_to appointment_url(@appointment)
  end

  test "should destroy appointment" do
    assert_difference('Appointment.count', -1) do
      delete appointment_url(@appointment)
    end

    assert_redirected_to appointments_url
  end
end
