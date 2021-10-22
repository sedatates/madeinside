<template>
  <div
    @mouseover="isHover = true"
    @mouseleave="isHover = false"
    class="parentProfile"
  >
    <div class="row">
      <div style="font-weight: lighter" class="col-lg-8 pt-5">
        <h1
          class="text-uppercase profile_title p-3"
          style="font-weight: lighter"
        >
          Mon professionnalisme
        </h1>
        <p class="p-3 pt-4 col-12 text-left">
          <strong style="font-weight: bold"> MADE INSIDE</strong>
          réinvente vos espaces en alliant design et originalité pour les
          professionnels ou les particuliers. Écoute, rigueur, déontologie et
          curiosité intellectuelle. Formé à l’ergonomie au travail, les espaces
          et dimensions sont devenus nos nouveaux atouts.bero voluptate quo nam.
        </p>
        <div class="row d-flex justify-content-between p-3">
          <div
            class="
              col-lg-6
              d-flex
              justify-content-between
              align-self-center
              profilebox
            "
            :class="{ profilebox_hover: isHover }"
          >
            <h3
              style="font-weight: 100; font-size: 16px"
              class="text-uppercase"
            >
              Cliquez pour en savoir plus
            </h3>
          </div>
          <div class="col-6 col-lg-6 isim">
            <h5 style="font-weight: lighter; font-size: 25px">Loure Vidal</h5>
            <p class="px-3">
              <strong style="font-weight: bold">conceptional interior</strong>
            </p>
          </div>
        </div>
      </div>

      <div class="profile col-6 col-lg-4 align-self-end">
        <img
          class="img-fluid"
          v-bind:src="require('../assets/' + 'profilePhoto.png')"
        />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      isHover: false,
    };
  },
};
</script>

<style >
@media only screen and (max-width: 1000px) {
  .parentProfile {
    position: relative;
    height: 700px;
    margin-top: 0px !important;
  }
  .profilebox {
    visibility: visible !important;
  }
  .profile_title {
    text-align: center;
  }
  .isim {
    margin-top: 15%;
    text-align: right !important;
  }
  .profile {
    bottom: 0px;
    right: 0px;
    position: absolute;
    overflow: hidden !important;
  }
  .profile > img {
    width: 300% !important;
    height: 300px !important;
  }
}
.profilebox {
  visibility: hidden;
}
.profilebox_hover {
  visibility: visible;
}
.parentProfile {
  margin-top: 100px;
  cursor: pointer;
  background-color: black;
  color: white;
  font-family: "Mulish", sans-serif;
}
.profile > img {
  width: 100%;
  max-width: 300px;
}
.isim {
  text-align: right;
}
.link_area {
  margin-top: 50px;
}
</style>