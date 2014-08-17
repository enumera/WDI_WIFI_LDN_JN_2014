require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post :create, review: { comment: @review.comment, food: @review.food, overall_rating: @review.overall_rating, power_point_availability: @review.power_point_availability, quietness: @review.quietness, reservation_possible: @review.reservation_possible, rough_number_of_seats: @review.rough_number_of_seats, signal_strength: @review.signal_strength, speed: @review.speed, stability: @review.stability, toilet: @review.toilet, user_id: @review.user_id, wifi_id: @review.wifi_id }
    end

    assert_redirected_to review_path(assigns(:review))
  end

  test "should show review" do
    get :show, id: @review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review
    assert_response :success
  end

  test "should update review" do
    put :update, id: @review, review: { comment: @review.comment, food: @review.food, overall_rating: @review.overall_rating, power_point_availability: @review.power_point_availability, quietness: @review.quietness, reservation_possible: @review.reservation_possible, rough_number_of_seats: @review.rough_number_of_seats, signal_strength: @review.signal_strength, speed: @review.speed, stability: @review.stability, toilet: @review.toilet, user_id: @review.user_id, wifi_id: @review.wifi_id }
    assert_redirected_to review_path(assigns(:review))
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete :destroy, id: @review
    end

    assert_redirected_to reviews_path
  end
end
