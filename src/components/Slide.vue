<template>
  <div class="Slider">
    <div class="row">
      <h5 class="px-3 text-title">Entrez dans l’univers Made Inside</h5>
      <p class="mt-3 pt-4 px-3 text-block">
        Appartement destiné à la location saisonnière Port La Nouvelle (11)
        Superatis Tauri montis verticibus qui ad solis ortum sublimius
        attolluntur, Cilicia spatiis porrigitur late distentis dives bonis
        omnibus terra, eiusque lateri dextro adnexa Isauria, pari sorte uberi
        palmite viget et frugibus minutis, quam mediam navigabile flumen
        Calycadnus interscindit.
      </p>
      <button class="btn btn-light col-11 col-lg-4 mt-2 button_home">
        EN SAVOIR PLUS
      </button>
    </div>
    <div class="row justify-content-between card_slides">
      <div class="col-md-6 slide_card">
        <Card path="baa-1.jpg" name="HOME STAGING" />
      </div>
      <div class="col-md-6 slide_card">
        <Card path="baa-2.jpg" name="RENOVATION" />
      </div>
    </div>
    <div class="row justify-content-between">
      <div class="col-md-6 slide_card">
        <Card path="baa-3.jpg" name="DECORATION" />
      </div>
      <div class="col-md-6 slide_card">
        <Card path="baa-4.jpg" name="AGENTECEMENT" />
      </div>
    </div>
    <div class="d-flex justify-content-between foot">
      <h5>Mes dernières créations</h5>
      <div class="d-flex">
        <h6 class="align-self-center m-2 text-uppercase">
          Voir tous mes projets
        </h6>

        <WhirlPlus :hover="isHover" :textTurn="isHover" color="#c66b74" />
      </div>
    </div>
  </div>
  
</template>

<script>
import Card from "./Card.vue";
import WhirlPlus from "./WhirlPlus.vue";
export default {
  data() {
    return {
      isHover: true,
    };
  },
  components: {
    Card,
    WhirlPlus,
  },
};
</script>

<style >
@media only screen and (max-width: 1000px) {
  .text-title {
    font-size: 28px !important;
    padding-inline: 0.6em !important;
    text-align: center !important;
  }
  .hover_text {
    justify-content: center !important;
  }
  .button_home {
    margin-left: auto !important;
    margin-right: auto !important;
    font-size: 16px !important;
    font-weight: lighter;
  }
  .foot {
    text-align: center !important;
    flex-direction: column;
    justify-content: center !important;
  }
  .slide_card {
    padding: 0em !important;
  }
}
.slide_card {
  padding: 1em;
}
.hover_text {
  display: flex;
  justify-content: flex-end;
}
.card_slides {
  margin-top: 100px;
}
.button_home {
  margin-left: 1rem;
  font-family: "Mulish", sans-serif;
  letter-spacing: 1px;
  height: 62px;
}
.Slider {
  margin-top: 100px;
}
.btn {
  background-color: #c66b74;
  color: white;
  font-size: 16px;
  font-weight: lighter;
  border-radius: 0px;
}
.btn:hover {
  border: 1px solid #c66b74;
  color: #c66b74;
}
.slide_image {
  max-height: 500px;
}
.text-title {
  font-size: 35px;
  max-height: 50px;
}
.text-block {
  font-size: 16px;
  letter-spacing: 0.2px;
  line-height: 26px;
}
.foot {
  padding-inline: 1rem;
  margin-block: 100px;
  align-items: center; /*Vertical align*/
}
img {
  object-fit: fill;
}
</style>