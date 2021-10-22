<template>
  <div>
    <div class="row justify-content-center Home-parent">
      <div class="col-12 home-with-blur">
        <img
          class="img-fluid img-home"
          :src="require('../assets/' + 'header-1.jpg')"
          alt="home-page-banner"
        />
        <div class="blur-home"></div>
      </div>
      <div class="col-12 col-lg-7 p-3 Texts d-flex justify-content-between">
        <div class="logo">
          <img
            class="img-fluid"
            :src="require('../assets/' + 'Logo.png')"
            alt=""
          />
        </div>
        <div class="quote">Réveillez votre intérieur</div>
      </div>
      <div class="col-12 slide_button">
        <SlideButton />
      </div>
    </div>
  </div>
</template>

<script>
import SlideButton from "./SlideButton.vue";
export default {
  components: {
    SlideButton,
  },
};
</script>


<style >
@media only screen and (max-width: 1023px) {
  .arrow {
    background: rgb(255, 255, 255) !important;
  }
  .img-home {
    height: 100vh;
    object-fit: cover !important;
  }
  .Texts {
    top: 0% !important;
    display: flex !important;
    align-items: center !important;
    flex-direction: column !important;
  }
  .quote {
    align-self: center !important;
    text-align: center !important;
    margin-top: 1rem;
  }
  .slide_button {
    justify-content: center !important;
    right: 0 !important;
    bottom: 12% !important;
  }
}
.slide_button {
  display: flex;
  justify-content: flex-end;
  align-self: flex-end;
  position: absolute;
  bottom: 7%;
  right: 21%;
}
.Home-parent {
  position: relative;
  width: 100%;
  top: 0;
  left: 0;
  z-index: 0;
}
.img-home {
  position: sticky;
  z-index: 0;
  max-height: 100vh;
  width: 100%;
  vertical-align: middle;
  object-fit: fill;
}
.blur-home {
  content: "";
  width: 100%;
  height: 80%;
  background: linear-gradient(
    180deg,
    rgba(0, 0, 0, 0.75),
    rgba(255, 255, 255, 0)
  );
  z-index: 0;
  position: absolute;
  top: 0;
  left: 0;
}
.Texts {
  color: white;
  top: 10%;
  align-items: center;
  position: absolute;
  font-size: 3em;
  font-weight: 100;
}

.quote {
  font-family: "Mulish", sans-serif;
  font-weight: bolder;
  line-height: 38px;
  font-size: 30px;
  display: flex;
  text-align: right;
  align-self: flex-end;
}
</style>