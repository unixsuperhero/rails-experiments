require 'spec_helper'

describe Admins::BannersController do
  render_views
  describe 'get #index' do
    it 'GET #index' do
      get :index
      response.should render_template(:index)
    end

    it 'GET #index with an existing banner' do
      Fabricate(:banner)
      get :index
      response.body.should =~ /HTML GOES HERE/
    end

    it 'GET #index with an existing banner' do
      Fabricate(:banner)
      get :index
      subject.banners.count.should be(1)
    end

    it 'GET #index with 3 existing banners' do
      3.times { Fabricate(:banner) }
      get :index
      subject.banners.count.should be(3)
    end
  end
  describe 'get #new' do
    it 'get #new' do
      get :new
      subject.banner.new_record?.should be(true)
    end
  end
  describe 'get #edit' do
    it 'get #edit' do
      get :edit, id: Fabricate(:banner).id
      subject.banner.new_record?.should be(false)
    end
    it 'get #edit' do
      get :edit, id: Fabricate(:banner, html: 'dante is a newb').id
      response.body.should =~ /dante is a newb/
    end
  end
  describe 'post #create' do
    it 'should create 1 banner' do
      Banner.count.should be(0)
      post :create, banner: {html: 'html_goes_here'}
      Banner.count.should be(1)
    end
    it 'should create 1 banner that can be found by the html' do
      post :create, banner: {html: 'html_goes_here'}
      Banner.find_all_by_html('the wrong value').count.should be(0)
      Banner.find_all_by_html('html_goes_here').count.should be(1)
    end
  end
  describe 'put #update' do
    it 'should update the banner' do
      b = Fabricate :banner, html: 'this is the html'
      put :update, id: b.id, banner: {html: 'new html'}
      Banner.count.should be(1)
      Banner.find_all_by_html('this is the html').count.should be(0)
      Banner.find_all_by_html('new html').count.should be(1)
    end
  end
  describe 'delete #destroy' do
    it 'should delete the banner' do
      b = Fabricate :banner, html: 'this is the html'
      Banner.count.should be(1)
      delete :destroy, id: b.id
      Banner.count.should be(0)
    end
  end
end
