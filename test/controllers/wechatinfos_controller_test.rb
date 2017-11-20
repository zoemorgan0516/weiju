require 'test_helper'

class WechatinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wechatinfo = wechatinfos(:one)
  end

  test "should get index" do
    get wechatinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_wechatinfo_url
    assert_response :success
  end

  test "should create wechatinfo" do
    assert_difference('Wechatinfo.count') do
      post wechatinfos_url, params: { wechatinfo: {  } }
    end

    assert_redirected_to wechatinfo_url(Wechatinfo.last)
  end

  test "should show wechatinfo" do
    get wechatinfo_url(@wechatinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_wechatinfo_url(@wechatinfo)
    assert_response :success
  end

  test "should update wechatinfo" do
    patch wechatinfo_url(@wechatinfo), params: { wechatinfo: {  } }
    assert_redirected_to wechatinfo_url(@wechatinfo)
  end

  test "should destroy wechatinfo" do
    assert_difference('Wechatinfo.count', -1) do
      delete wechatinfo_url(@wechatinfo)
    end

    assert_redirected_to wechatinfos_url
  end
end
