<template>
  <div class="card" @mouseover="isHover = true" @mouseleave="isHover = false">
    <img class="card-image" v-bind:src="require('../assets/' + image)" />
    <div class="shadow" :class="{ shadow_hover: isHover }">
      <span class="title" :class="{ title_hover: isHover }" href="#">{{
        name
      }}</span>
    </div>
    <WhirlPlus class="plus_position" :hover="isHover" color="#fff" />
  </div>
</template>
F
<script>
import WhirlPlus from "./WhirlPlus.vue";

export default {
  props: ["path", "name"],
  components: {
    WhirlPlus,
  },
  data() {
    return {
      image: "baa-1.jpg",
      isHover: false,
    };
  },
  beforeMount() {
    this.image = this.path;
  },
};
</script>

<style>
@media only screen and (max-width: 1000px) {
  .card-image {
    height: 259px;
    object-fit: fill;
  }
  .card {
    margin-block: 0.3em;
  }
}
.plus_position{
  position: absolute;
  left: 50%;
  top:50%;
  transform: translate(-50%,-50%);
}
.card-image {
  position: relative;
}
.shadow {
  position: absolute;
  display: flex;
  justify-content: center;
  align-items: center;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  width: 47%;
  height: 23%;
  transition: 0.2s all ease-in-out;
  background: rgba(0, 0, 0, 0.5);
}
.shadow_hover {
  width: 100%;
  height: 100%;
  transition: 0.2s all ease-in-out;
  background: rgba(0, 0, 0, 0.5);
}
.title {
  text-decoration: none;
  color: white;
  font-size: 0.9em;
  max-width: 256px;
  font-weight: bold;
}
.title_hover {
  text-decoration: none;
  color: white;
  font-size: 0.9em;
  max-width: 256px;
  font-weight: bold;
  transition: 0.2s all ease-in-out;
  transform: translateY(-150%);
}
</style>