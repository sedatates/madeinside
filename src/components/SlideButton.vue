<template>
  <div>
    <a
      href="#SlideShow"
      class="arrow"
      @mouseover="isHover = true"
      @mouseout="isHover = false"
    >
      <div class="kutu" :class="{ kutu_hover: isHover }">
        <span class="left-arrow"></span><span class="right-arrow"></span>
      </div>
    </a>
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
<style scoped>
@media only screen and (max-width: 800px) {
  .arrow {
    width: 4em !important;
    height: 4em !important;
  }
  .kutu > span {
    width: 0.96em !important;
  }
}
.arrow {
  width: 4em;
  height: 4em;
  display: inline-block;
  position: relative;
  background-color: rgb(255, 255, 255);
  border-radius: 50%;
}
.kutu_hover > span {
  top: 80% !important;
}
.kutu > span {
  top: 50%;
  position: absolute;
  width: 0.95em;
  height: 0.1rem;
  display: inline-block;
  transition: all 0.2s ease;
  background-color: #c66b74;
}
.left-arrow {
  left: 30%;
  transform: rotate(45deg);
}
.right-arrow {
  right: 30%;
  transform: rotate(-45deg);
}
</style>