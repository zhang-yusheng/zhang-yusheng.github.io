<script setup>
  import DefaultTheme from 'vitepress/theme'
  import Discussion from '../../components/Discussion.vue'
</script>

<template>
  <DefaultTheme.Layout>
    <template #doc-after>
      <div class="margin-top-wrapper">
        <Discussion />
      </div>
    </template>
  </DefaultTheme.Layout>
</template>

<style scoped>
.margin-top-wrapper {
  margin-top: 64px;
}
</style>