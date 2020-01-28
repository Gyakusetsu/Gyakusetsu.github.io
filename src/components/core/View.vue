<template>
  <div>
    <welcome />
    <!-- <my-github-calendar/> -->
    <!-- <recent-projects />
    <services />
    <about-me />
    <get-in-touch /> -->
  </div>
</template>

<script>
export default {
  components: {
    // AboutMe: () => import("@/components/AboutMe"),
    // // MyGithubCalendar: () => import("@/components/MyGithubCalendar"),
    // GetInTouch: () => import("@/components/GetInTouch"),
    // RecentProjects: () => import("@/components/RecentProjects"),
    // Services: () => import("@/components/Services"),
    Welcome: () => import("@/components/Welcome")
  }
};
</script>
