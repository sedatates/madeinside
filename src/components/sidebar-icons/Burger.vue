<template>
  <div
    @mouseover="hover = true"
    @mouseleave="hover = false"
    class="parentBurger d-flex justify-content-center"
  >
    <div class="kutu">
      <span class="left-span" :class="{ left_span_hover: hover }"></span>
      <span class="right-span" :class="{ right_span_hover: hover }"></span>
      <span class="left-span" :class="{ left_span_hover: hover }"></span>
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
.left_span_hover {
  transform: translateX(50%) !important;
  background-color: #c66b74 !important;
}
.right_span_hover {
  transform: translateX(-50%) !important;
  background-color: #c66b74 !important;
}

.parentBurger {
  position: relative;
  height: 35px;
  width: 35px;
  display: flex;
  align-items: center;
  cursor: pointer;
}
.kutu {
  height: 35px;
  width: 35px;
  position: absolute;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  overflow: hidden;
}
.kutu > span {
  overflow: hidden;
  display: inline-block;
  background-color: black;
  border-color: black;
  width: 100%;
  height: 0.2rem;
  transition: 0.2s;
}
/*
.kutu_over {
  position: absolute;
  height: 35px;
  width: 35px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.kutu_over > span {
  display: inline-block;
  background-color: #c66b74;
  border-radius: 5px;
  border-color: #c66b74;
  width: 50%;
  height: 0.4rem;
}*/
</style>
