# frozen_string_literal: true

require "test_helper"

class LosersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loser = losers(:one)
  end

  test "should get index" do
    get losers_url
    assert_response :success
  end

  test "should get new" do
    get new_loser_url
    assert_response :success
  end

  test "should create loser" do
    assert_difference("Loser.count") do
      post losers_url, params: { loser: { nachname: @loser.nachname, vorname: @loser.vorname } }
    end

    assert_redirected_to loser_url(Loser.last)
  end

  test "should show loser" do
    get loser_url(@loser)
    assert_response :success
  end

  test "should get edit" do
    get edit_loser_url(@loser)
    assert_response :success
  end

  test "should update loser" do
    patch loser_url(@loser), params: { loser: { nachname: @loser.nachname, vorname: @loser.vorname } }
    assert_redirected_to loser_url(@loser)
  end

  test "should destroy loser" do
    assert_difference("Loser.count", -1) do
      delete loser_url(@loser)
    end

    assert_redirected_to losers_url
  end
end
