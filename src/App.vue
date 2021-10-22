<template>
  <div class="row justify-content-center forFixedMenu">
    <div>
      <Menu />
    </div>
    <div class="col-12">
      <Home />
    </div>
    <div class="col-lg-7 col-12">
      <Slide id="SlideShow" />
    </div>
    <div class="col-12">
      <Galerie />
    </div>
    <div class="col-lg-7 col-12">
      <Profile />
    </div>
    <div class="col-lg-7 col-12">
      <Contact />
    </div>
    <div class="col-12">
      <Footer />
    </div>
  </div>
</template>

<script>
import Home from "./components/Home";
import Slide from "./components/Slide";
import Galerie from "./components/Galerie";
import Profile from "./components/Profile";
import Contact from "./components/Contact";
import Footer from "./components/Footer";
import Menu from "./components/Menu";

export default {
  name: "App",
  components: {
    Home,
    Slide,
    Galerie,
    Profile,
    Contact,
    Footer,
    Menu,
  },
};
</script>

<style >
@media only screen and (max-width: 1024px) {
  .forFixedMenu {
    margin-right: 0 !important;
  }
}

@import url("https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,200;0,300;0,400;1,200;1,300&display=swap");

.forFixedMenu {
  margin-right: 75px;
}
body {
  font-family: "Mulish", sans-serif;
}
h5 {
  font-size: 35px;
}
h6 {
  color: #c66b74;
  font-size: 16px;
  line-height: 16px;
}
ul {
  padding: 0;
}
.row {
  --bs-gutter-x: 0 !important;
  --bs-gutter-y: 0 !important;
}
</style>
