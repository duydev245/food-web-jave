<%-- Document : index Created on : Jun 25, 2024, 4:26:52 PM Author : htduy --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="Duy Hoang Thanh & Phat Tran Tan" />
    <link rel="shortcut icon" href="./img/logo.jpg" type="image/jpg" />
    <title>Do Food</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css"
      integrity="sha512-Ez0cGzNzHR1tYAv56860NLspgUGuQw16GiOOp/I2LuTmpSK9xDXlgJz3XN4cnpXWDmkNBKXR/VDMTCnAaEooxA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
    />
    <link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v6.1.1/css/all.css"
    />
    <link rel="stylesheet" href="./css/styleIndex.css" />
  </head>

  <body>
    <header>
      <nav class="navbar navbar-expand-lg navbar-dark fixed-top mb-5">
        <div class="container">
          <a class="navbar-brand me-5" href="#">
            <i class="fa fa-utensils"></i>
            Do Food Store
          </a>

          <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav me-auto nav1">
              <li class="nav-item text-center mx-3">
                <a
                  class="nav-link active"
                  href=""
                  role="button"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <div>
                    <i class="fas fa-home fa-xl mb-1"></i>
                  </div>
                  Trang Chủ
                </a>
              </li>

              <li class="nav-item text-center mx-3">
                <a
                  class="nav-link active"
                  href=""
                  role="button"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <div>
                    <i class="fa fa-carrot"></i>
                  </div>
                  Đồ Ăn Chay
                </a>
              </li>

              <li class="nav-item text-center mx-3">
                <a
                  class="nav-link active"
                  href=""
                  role="button"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <div>
                    <i class="fa fa-carrot"></i>
                  </div>
                  Đồ Ăn Mặn
                </a>
              </li>
              <li class="nav-item text-center">
                <a
                  class="nav-link js-toggle-cart active"
                  role="button"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <div>
                    <i class="fa-solid fa-xl fa-shopping-cart"></i>
                    <span
                      class="badge rounded-pill badge-notification bg-light text-dark"
                      id="cartCount"
                    ></span>
                  </div>
                  Cart
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <div class="banner-image">
      <div class="container py-5">
        <div class="row py-5 align-items-center">
          <div class="col-lg-6">
            <h5 class="display-4 my-4 font-weight-bold text-white">
              Galaxy S22｜S22+
            </h5>
            <div class="d-flex star-rating mb-5">
              <a href=""><i class="lni lni-star-filled"></i></a>
              <a href=""><i class="lni lni-star-filled"></i></a>
              <a href=""><i class="lni lni-star-filled"></i></a>
              <a href=""><i class="lni lni-star"></i></a>
              <a href=""><i class="lni lni-star"></i></a>
            </div>
            <p class="h5 aa mb-4 pb-3 text-white-50">
              Get select Galaxy Buds2 or Buds Live on us with Galaxy S22+. Plus,
              get up to $700 enhanced trade-in credit. For a limited time. Get
              hands on with the S22 and S22+. See in AR >>
            </p>
            <h3 class="text-white mb-5">1325$</h3>
            <div class="d-flex">
              <a href="#" class="btn btn-lg red-btn"
                ><i class="lni lni-play-store me-2"></i> Find out more!</a
              >
            </div>
          </div>
          <div class="col-lg-6 text-lg-right text-center mt-5 mt-lg-0">
            <div class="banner-phone-image">
              <img src="../view/img/s22.png" alt="phone-img" />
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container" id="content-wrap">
      <main role="main" class="pb-5 mb-5">
        <div class="container">
          <div class="my-5">
            <div class="container">
              <select
                class="form-select w-25 mb-5"
                id="selectList"
                aria-label="Default select example"
                onchange="handleSelection()"
              >
                <option value="all">All Brands</option>
                <option value="Iphone">Apple</option>
                <option value="Samsung">Samsung</option>
              </select>
            </div>
            <div class="row mx-0" id="phoneList"></div>
          </div>
        </div>
      </main>
    </div>
    <div class="meh">
      <div class="cart is-hidden">
        <div class="cart__overlay"></div>
        <div class="cart__contents">
          <div class="cart__products">
            <h2>Shopping Cart</h2>
            <p class="microcopy">An overview of your selected products.</p>
            <div class="products row">
              <div class="col-12 my-5">
                <table class="table align-middle">
                  <thead>
                    <tr>
                      <th scope="col">Name</th>
                      <th scope="col">Price</th>
                      <th scope="col">Quantity</th>
                      <th scope="col">Total</th>
                      <th scope="col">Delete</th>
                    </tr>
                  </thead>
                  <tbody id="cartList"></tbody>
                </table>
              </div>
            </div>
          </div>
          <div class="cart__totals">
            <table class="totals">
              <tbody>
                <tr>
                  <th class="align-left">Total</th>
                  <td class="align-right" id="priceTotal">$0</td>
                </tr>
              </tbody>
              <tfoot>
                <tr>
                  <td colspan="2" class="tertiary">
                    <small>Estimations based on New York, United States</small>
                  </td>
                </tr>
              </tfoot>
            </table>
            <div class="form__footer">
              <button class="btn first js-toggle-cart">
                Continue Shopping
              </button>
              <button class="btn yellow-btn" onclick="payNow()">Pay Now</button>
              <button
                class="btn me-5 ms-0 px-4 red-btn"
                onclick="emptyCart()"
                id="emptyCart"
              >
                <i class="fa-solid fa-trash me-2"></i> Empty Cart
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer -->
    <footer
      class="text-center text-lg-start bg-dark text-light gradient-custom"
    >
      <!-- Section: Social media -->
      <section class="d-flex justify-content-center p-4 border-bottom">
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
          <span>Get connected with us on social networks:</span>
        </div>
        <!-- Left -->
        <!-- Right -->
        <div>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-google"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-instagram"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-linkedin"></i>
          </a>
          <a href="" class="me-4 text-reset">
            <i class="fab fa-github"></i>
          </a>
        </div>
        <!-- Right -->
      </section>
      <!-- Section: Social media -->
      <!-- Section: Links  -->
      <section class="">
        <div class="container text-center text-md-start mt-5">
          <!-- Grid row -->
          <div class="row mt-3">
            <!-- Grid column -->
            <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
              <!-- Content -->
              <h6 class="text-uppercase fw-bold mb-4">
                <i class="fa-lg fa-solid fa-robot me-3"></i>My Phone Store
              </h6>
              <p>
                We pride ourselves on our efficiency and hard work, but most of
                all our ability to source you the best quality and best value
                products and devices in the market.
              </p>
            </div>
            <!-- Grid column -->
            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
              <!-- Links -->
              <h6 class="text-uppercase fw-bold mb-4">Brands</h6>
              <p>
                <a href="#!" class="text-reset">iPhone</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Sumsung</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Xiaomi</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Oppo</a>
              </p>
            </div>
            <!-- Grid column -->
            <!-- Grid column -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
              <!-- Links -->
              <h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
              <p>
                <a href="#!" class="text-reset">Pricing</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Settings</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Orders</a>
              </p>
              <p>
                <a href="#!" class="text-reset">Help</a>
              </p>
            </div>
            <!-- Grid column -->
            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
              <!-- Links -->
              <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
              <p>
                <i class="fas fa-home me-3"></i> Ho Chi Minh, Tan Binh, Viet Nam
              </p>
              <p>
                <i class="fas fa-envelope me-3"></i>
                myphonestore.work@mail.com
              </p>
              <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
              <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
            </div>
            <!-- Grid column -->
          </div>
          <!-- Grid row -->
        </div>
      </section>
      <!-- Section: Links  -->
      <!-- Copyright -->
      <div
        class="text-center p-4"
        style="background-color: rgba(0, 0, 0, 0.05)"
      >
        &copy; May 2024
        <a class="text-reset fw-bold" href="">My Phone Store</a>
      </div>
      <!-- Copyright -->
    </footer>
    <!-- Footer -->

    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"
      integrity="sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/js/bootstrap.min.js"
      integrity="sha512-EKWWs1ZcA2ZY9lbLISPz8aGR2+L7JVYqBAYTq5AXgBkSjRSuQEGqWx8R1zAX16KdXPaCjOCaKE8MCpU0wcHlHA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="//cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

    <script>
      // toggle shopping cart
      $(".js-toggle-cart, .cart__overlay").on("click", function () {
        $(".cart").toggleClass("is-hidden");
      });
      // change nav bar color when scroll
      $(window).on("scroll", function () {
        if (this.scrollY > 100) {
          $("nav").addClass("black");
        } else {
          $("nav").removeClass("black");
        }
      });
    </script>
  </body>
</html>
