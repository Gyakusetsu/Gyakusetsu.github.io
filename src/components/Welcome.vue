<template>
  <section id="welcome" class="hide-overflow">
    <v-layout>
      <v-flex hidden-sm-and-down md6>
        <v-img :src="require('@/assets/home.jpg')" height="100vh" />
      </v-flex>

      <v-flex
        xs12
        md6
        align-content-space-between
        layout
        :pa-5="$vuetify.breakpoint.smAndDown"
        wrap
      >
        <!-- <base-bubble-1 style="transform: rotate(180deg) translateY(25%)" /> -->

        <v-layout row wrap align-center justify-center>
          <v-flex xs10 mt-10>
            <base-text>Project contributions heat map made by me</base-text>
          </v-flex>
          <my-github-calendar class="mycalendar" />
          <v-flex xs10 md10>
            <base-heading>Hi, I'm Reymar</base-heading>
            <base-text>
              I am a 21-year old software engineer trying to make the cyber world a bit better.
              How? By contributing to open-source projects and being passionate about my career.
              <br />I am an anime and music lover, workaholic,
              I love games, computer games and I am always looking forward to new challenges. Do you have one for me?
            </base-text>
            <base-btn class="mt-4" :onclick="redirectToResumeCV">Learn More about me!</base-btn>
            <v-divider :vertical="true" class="mx-2"/>
            <v-btn class="mt-4" @click="redirectToSource"> View page source</v-btn>
          </v-flex>
        </v-layout>

        <!-- <base-bubble-2 style="transform: rotate(180deg) translate(-200px, -15%)" /> -->
      </v-flex>
    </v-layout>
  </section>
</template>

<script>
export default {
  components: {
    MyGithubCalendar: () => import("@/components/MyGithubCalendar")
    // CoreFooter: () => import('@/components/core/Footer'),
  },
  methods: {
    redirectToResumeCV() {
      // window.location.href = "https://drive.google.com/open?id=1a7BAAsDKU-iI57K4MlUJ5r6JchFP7Xxt"
      this.redirectMe(
        "https://drive.google.com/open?id=1lxA2FtrsmW4B9c04AUWPZVBT4hzzP-PY"
      );
    },
    redirectToSource() {
      // window.location.href = "https://drive.google.com/open?id=1a7BAAsDKU-iI57K4MlUJ5r6JchFP7Xxt"
      this.redirectMe(
        "https://github.com/Gyakusetsu/gyakusetsu.github.io/"
      );
    },
    redirectMe(url) {
      window.open(url);
    }
  }
};
</script>

<style scoped>
.mycalendar {
  margin: 0 8% 8% 8%;
}
</style>