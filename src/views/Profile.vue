<template>
  <div>
    <ProfileComp />
  </div>
</template>

<script>
import ProfileComp from "./../components/Profile/Profile.vue";
import { onBeforeMount, onMounted } from "vue";
export default {
  components: {
    ProfileComp,
  },
  setup() {
    onBeforeMount(() => {
      console.log("onBeforeMount");
    });
    onMounted(() => {
      console.log("onMounted");
    });
  },
};
</script>

<style>
</style>