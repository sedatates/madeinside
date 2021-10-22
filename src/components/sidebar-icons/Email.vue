<template>
  <div
    @mouseover="hover = true"
    @mouseleave="hover = false"
    class="parentEmail"
  >
    <div class="kutu" :class="{kutu_hover : hover}">
      <span class="left-span"></span>
      <span class="bottom-span"></span>
      <span class="top-span"></span>
      <span class="right-span"></span>
      <span
        class="left-corner-span"
        :class="{ left_corner_span_hover: hover }"
      ></span>
      <span
        class="right-corner-span"
        :class="{ right_corner_span_hover: hover }"
      ></span>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      hover: false,
    };
  },
};
</script>

<style scoped>
.parentEmail {
  overflow: hidden;
}
.left-span {
  transform: rotate(90deg);
  left: calc(-9px);
  bottom: calc(9px);
  width: 60% !important;
}
.right-span {
  transform: rotate(90deg);
  right: calc(-9px);
  bottom: calc(9px);
  width: 60% !important;
}
.bottom-span {
  bottom: calc(0px);
}
.top-span {
  top: calc(12px);
}
.left-corner-span {
  left: 0;
  top: calc(17px);
  width: 19.67px !important;
  transform: rotate(30deg);
}
.left_corner_span_hover{
  top: calc(6px);
  width: 19.67px !important;
  transform: rotate(-30deg);
}
.right-corner-span {
  top: calc(17px);
  right: 0px;
  width: 19.67px !important;
  transform: rotate(-30deg);
}
.right_corner_span_hover {
  top: calc(6px);
  right: 0px;
  transform: rotate(30deg);
}
.kutu {
  overflow: hidden;
  height: 35px;
  width: 35px;
  position: relative;
  display: flex;
  align-items: center;
  top: 50%;
  transform: translate(0%,-0%);
}
.kutu > span {
  position: absolute;
  display: inline-block;
  background-color: black;
  width: 100%;
  height: 0.2rem;
  transition: 0.2s;
}
.kutu_hover> span {
  background-color: #c66b74 !important;
}
</style>