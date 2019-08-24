require 'test_helper'

class RehbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rehber = rehbers(:one)
  end

  test "should get index" do
    get rehbers_url
    assert_response :success
  end

  test "should get new" do
    get new_rehber_url
    assert_response :success
  end

  test "should create rehber" do
    assert_difference('Rehber.count') do
      post rehbers_url, params: { rehber: { isim: @rehber.isim, ozet: @rehber.ozet, sehir: @rehber.sehir } }
    end

    assert_redirected_to rehber_url(Rehber.last)
  end

  test "should show rehber" do
    get rehber_url(@rehber)
    assert_response :success
  end

  test "should get edit" do
    get edit_rehber_url(@rehber)
    assert_response :success
  end

  test "should update rehber" do
    patch rehber_url(@rehber), params: { rehber: { isim: @rehber.isim, ozet: @rehber.ozet, sehir: @rehber.sehir } }
    assert_redirected_to rehber_url(@rehber)
  end

  test "should destroy rehber" do
    assert_difference('Rehber.count', -1) do
      delete rehber_url(@rehber)
    end

    assert_redirected_to rehbers_url
  end
end
