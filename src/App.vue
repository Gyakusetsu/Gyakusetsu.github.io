<template>
  <v-app>
    <!-- <core-toolbar /> -->
    <core-view />
    <!-- <core-footer /> -->
  </v-app>
</template>

<script>
export default {
  components: {
    // CoreToolbar: () => import("@/components/core/Toolbar"),
    CoreView: () => import("@/components/core/View")
    // CoreFooter: () => import('@/components/core/Footer'),
  }
};
</script>
