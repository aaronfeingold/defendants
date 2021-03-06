require "test_helper"

class DefendantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @defendant = defendants(:one)
  end

  test "should get index" do
    get defendants_url
    assert_response :success
  end

  test "should get new" do
    get new_defendant_url
    assert_response :success
  end

  test "should create defendant" do
    assert_difference('Defendant.count') do
      post defendants_url, params: { defendant: { date_of_birth: @defendant.date_of_birth, name: @defendant.name, notes: @defendant.notes, observation_id: @defendant.observation_id, race: @defendant.race, sex: @defendant.sex } }
    end

    assert_redirected_to defendant_url(Defendant.last)
  end

  test "should show defendant" do
    get defendant_url(@defendant)
    assert_response :success
  end

  test "should get edit" do
    get edit_defendant_url(@defendant)
    assert_response :success
  end

  test "should update defendant" do
    patch defendant_url(@defendant), params: { defendant: { date_of_birth: @defendant.date_of_birth, name: @defendant.name, notes: @defendant.notes, observation_id: @defendant.observation_id, race: @defendant.race, sex: @defendant.sex } }
    assert_redirected_to defendant_url(@defendant)
  end

  test "should destroy defendant" do
    assert_difference('Defendant.count', -1) do
      delete defendant_url(@defendant)
    end

    assert_redirected_to defendants_url
  end
end
