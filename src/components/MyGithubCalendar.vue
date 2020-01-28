<template>
  <div class="calendar">
    <!-- Loading stuff -->
    Loading the data just for you.
  </div>
</template>

<script>

import "github-calendar/dist/github-calendar-responsive.css";
import GithubCalendar from "github-calendar";

export default {
  mounted() {
    //  new GithubCalendar(".calendar", "Gyakusetsu");
    // or enable responsive functionality
    new GithubCalendar(".calendar", "Gyakusetsu", { responsive: true });
  }
}
</script>