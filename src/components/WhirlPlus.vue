<template>
  <div
    v-if="hover"
    class="whirl_plus"
    :class="{ whirl_hover: hover }"
    @mouseover="whirlTurn = true"
    @mouseleave="whirlTurn = false"
    v-bind:style="{ 'border-color': bgcolor }"
  >
    <div class="plus">
      <span
        v-bind:style="{ 'background-color': bgcolor }"
        class="left"
        :class="{ left_hover: whirlTurn }"
      ></span>
      <span
        v-bind:style="{ 'background-color': bgcolor }"
        class="right"
        :class="{ right_hover: whirlTurn }"
      ></span>
    </div>
  </div>
</template>

<script>
export default {
  props: ["hover", "color", "textTurn"],
  data() {
    return {
      whirlTurn: false,
      bgcolor: this.color,
    };
  },
};
</script>


<style>
.whirl_hover {
  visibility: visible !important;
  color: white;
  border: 2px solid;
  border-radius: 50%;
  height: 36px;
  width: 36px;
  user-select: none;
}
.whirl_plus {
  position: relative;
  visibility: hidden;
  height: 36px;
  width: 36px;
}
.plus {
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}
.plus > span {
  position: absolute;
  width: 1rem;
  height: 2px;
  display: block;
  transition: 0.2s all ease;
}
.right {
  transform: rotate(90deg);
}
.left_hover {
  transform: rotate(90deg) !important;
}
.right_hover {
  transform: rotate(180deg) !important;
}
</style>