<template>
  <v-btn
    color="secondary"
    rounded
    @click="onclick"
  >
    <slot />
  </v-btn>
</template>

<script>
export default {
  props: {
    onclick: Function
  }
}
</script>