require 'test_helper'

class RtMoviesControllerTest < ActionController::TestCase
  setup do
    @rt_movie = rt_movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rt_movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rt_movie" do
    assert_difference('RtMovie.count') do
      post :create, rt_movie: { audience_rating: @rt_movie.audience_rating, critics_rating: @rt_movie.critics_rating, description: @rt_movie.description, image_url: @rt_movie.image_url, rating: @rt_movie.rating, review: @rt_movie.review, rtid: @rt_movie.rtid, runtime: @rt_movie.runtime, title: @rt_movie.title, year: @rt_movie.year }
    end

    assert_redirected_to rt_movie_path(assigns(:rt_movie))
  end

  test "should show rt_movie" do
    get :show, id: @rt_movie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rt_movie
    assert_response :success
  end

  test "should update rt_movie" do
    put :update, id: @rt_movie, rt_movie: { audience_rating: @rt_movie.audience_rating, critics_rating: @rt_movie.critics_rating, description: @rt_movie.description, image_url: @rt_movie.image_url, rating: @rt_movie.rating, review: @rt_movie.review, rtid: @rt_movie.rtid, runtime: @rt_movie.runtime, title: @rt_movie.title, year: @rt_movie.year }
    assert_redirected_to rt_movie_path(assigns(:rt_movie))
  end

  test "should destroy rt_movie" do
    assert_difference('RtMovie.count', -1) do
      delete :destroy, id: @rt_movie
    end

    assert_redirected_to rt_movies_path
  end
end
