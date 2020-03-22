<template>
  <section id="welcome" class="hide-overflow">
    <v-layout>
      <v-flex
        xs12
        md6
        align-content-space-between
        layout
        :pa-5="$vuetify.breakpoint.smAndDown"
        wrap
         hidden-sm-and-down 
        style="
  background-color: #282a36; padding: 0 15px 1000px 15px"
      >
        <v-img id="myimage" :src="require('@/assets/life.png')" />
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
            <base-text>My project contributions activity heat map</base-text>
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
            <v-divider :vertical="true" class="mx-2" />
            <v-btn class="mt-4" @click="redirectToSource">View page source</v-btn>
            <v-divider :vertical="true" class="mx-2" />
            <v-btn class="mt-4 orange" @click="redirectToCovid">COVID-19 Map</v-btn>
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
        "https://drive.google.com/open?id=1O59eNDG3EbRbipjUNIPBIY41WnS2x6Xl"
      );
    },
    redirectToSource() {
      // window.location.href = "https://drive.google.com/open?id=1a7BAAsDKU-iI57K4MlUJ5r6JchFP7Xxt"
      this.redirectMe("https://github.com/Gyakusetsu");
    },
    redirectToCovid() {
      // window.location.href = "https://drive.google.com/open?id=1a7BAAsDKU-iI57K4MlUJ5r6JchFP7Xxt"
      this.redirectMe("http://gyakusetsu.github.io/coronavirus-map");
    },
    redirectMe(url) {
      window.open(url);
    }
  }
};
</script>

<style scoped>
.mycalendar {
  margin: 0 8% 2% 8%;
}

#myimage {
  height: 100%;
}
</style>