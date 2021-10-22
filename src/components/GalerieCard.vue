<template>
  <div
    class="parentGalerie"
    @mouseover="isHover = true"
    @mouseleave="isHover = false"
  >
    <img class="img-fluid" v-bind:src="require('../assets/' + path)" />

    <div class="row introbox" :class="{ introbox_hover: isHover }">
      <div class="text_area_galerie_card">
        <h6>RELOKING</h6>
        <span class="text_mobil"
          >Appartement destiné à la location saisonnière</span
        >
      </div>
      <span class="text-uppercase" style="color: gray; font-weight: 100">
        Port La Nouvelle (11)
      </span>
      <div class="mobil_align">
        <WhirlPlus
          @mouseover="textHover = true"
          @mouseleave="textHover = false"
          class="whirl_show"
          color="#c66b74"
          :hover="isHover"
        />
        <div class="blanket"></div>
        <div
          class="p-3 galerie_text"
          :class="{ galerie_hover_text: textHover }"
        >
          <h6>EN SAVOIR PLUS</h6>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import WhirlPlus from "./WhirlPlus.vue";

export default {
  props: ["path", "position"],
  data() {
    return {
      isHover: false,
      textHover: false,
    };
  },
  components: { WhirlPlus },
};
</script>

<style >
@media only screen and (max-width: 1000px) {
  .introbox {
    position: relative !important;
    height: 100% !important;
    width: 100% !important ;
    bottom: 0px !important;
    left: 0px !important;
    visibility: visible !important;
    opacity: 1 !important;
    text-align: center;
  }
  .whirl_show {
    position: absolute;
    visibility: hidden !important;
  }
  .text_mobil {
    font-size: 22px !important;
    font-weight: lighter !important;
  }
  .mobil_align {
    justify-content: center !important;
  }
  .galerie_text {
    position: unset !important;
    visibility: visible !important;
    opacity: 1 !important;
  }
}

.galerie_text {
  position: absolute;
  visibility: hidden;
  transition: all 0.2s ease-in-out;
  left: 8%;
  opacity: 0;
}
.galerie_hover_text {
  left: 12%;
  opacity: 1;
  visibility: visible;
  transition: all 0.2s ease-in-out;
}
.whirl_show {
  z-index: 2;
  position: absolute;
}
.mobil_align {
  display: flex;
  align-items: center;
  justify-content: flex-start;
}
.text_mobil {
  font-size: 28px;
  font-weight: 500;
}
.text_area_galerie_card {
  font-family: "Mulish", sans-serif;
  line-height: 30px;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
}
.parentGalerie {
  position: relative;
}
.introbox {
  position: absolute;
  visibility: hidden;
  transition: all 0.2s ease-in-out;
  max-height: 300px;
  height: 100%;
  width: 50%;
  bottom: 10px;
  left: 10px;
  opacity: 0;
  padding: 20px;
}

.introbox_hover {
  opacity: 1;
  visibility: visible;
  max-height: 300px;
  background-color: #fff;
  height: 100%;
  width: 50%;
  bottom: 10px;
  left: 10px;
  transition: all 0.2s ease-in-out;
}
</style>