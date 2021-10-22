<template>
  <div
    @mouseover="hover = true"
    @mouseleave="hover = false"
    class="parentClosecross"
  >
    <div class="kutu">
      <span class="left-span" :class="{ left_span_hover: hover }"></span>
      <span class="right-span" :class="{ right_span_hover: hover }"></span>
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
.left-span{
  transform:rotate(45deg)
}
.right-span{
  transform:rotate(-45deg)
}
.left_span_hover{
  transform:rotate(135deg);
  background-color: #c66b74 !important;
}
.right_span_hover{
  transform:rotate(45deg);
  background-color: #c66b74 !important;
}
.parentClosecross {
  position: relative;
  height: 35px;
  width: 35px;
  overflow: hidden;
  cursor: pointer;
}
.kutu {
  height: 35px;
  width: 35px;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}
.kutu > span {
  overflow: hidden;
  display: inline-block;
  position: absolute;
  background-color: black;
  width: 40px;
  height: 0.2rem;
  transition: 0.2s;
}
</style>