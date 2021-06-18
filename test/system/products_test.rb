require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url

    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test "lets a signed in user create a new product" do
    login_as users(:andre)
    visit "/products/new"

    #i should have a form right?
    fill_in "product_name", with: "Le Wagon Madrid"
    fill_in "product_tagline", with: "Change your Life: Learn to Code"
    #once form is filled
    #i need to click on submit
    click_on "Create a Product"

    #should be redirected to home page!
    assert_equal root_path, page.current_path
    assert_text "Change your Life: Learn to Code"
  end
end
