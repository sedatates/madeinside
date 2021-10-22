<template>
  <div class="parent">
    <div class="row justify-content-center">
      <div class="col-12 col-lg-6 left_galerie">
        <GalerieCard path="galerie-1.jpg" position="left" />
      </div>
      <div class="col-12 col-lg-6 right_galerie">
        <div class="">
          <GalerieCard path="galerie-2.jpg" />
        </div>
        <div class="">
          <GalerieCard path="galerie-3.jpg" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import GalerieCard from "./GalerieCard.vue";
export default {
  data() {
    return {
      
    };
  },
  components: {
    GalerieCard,
  },
};
</script>
<style >
@media screen and (max-width: 960px) {
  .left_galerie {
    padding-right: 0 !important;
  }
}
.left_galerie {
  padding-right: 1em;
}
.right_galerie {
  
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
}
</style>