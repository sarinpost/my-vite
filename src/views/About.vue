<template>
  <div>
    <div
      class="line-it-button"
      data-lang="en"
      data-type="share-b"
      data-ver="3"
      data-url="https://dev.chococrm.com:10021/Membership"
      data-color="default"
      data-size="small"
      data-count="true"
      style="display: none"
    >
      pokpo
    </div>
  </div>
</template>

<script>
import VitePluginCdn from "vite-plugin-cdn";
export default {
  methods: {
    onClick() {
      window.location.href =
        "https://social-plugins.line.me/lineit/share?url=https://liff.line.me/1653596393-xxxxxxxx";
    },
  },
  plugins: [
    VitePluginCdn({
      esm: true,
      modules: [
        {
          name: "vue",
          url:
            "https://www.line-website.com/social-plugins/js/thirdparty/loader.min.js",
        },
      ],
    }),
  ],
};
</script>

<style>
.line-it-button {
  height: 100px;
  width: 100px;
  background-color: red;
  color: black;
}
</style>