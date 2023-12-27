<template>
      <v-container  class="  flex-column align-center justify-center">
        <v-col cols="auto" class="d-flex align-center justify-center">
          <v-img
              :height="90"
              aspect-ratio="4/3"
              :src="logoSrc"
          ></v-img>
        </v-col>
        <v-col cols="auto" class="d-flex align-center justify-center">
          {{ $t('footer.address') }}
        </v-col>
        <v-col cols="auto" class="d-flex align-center justify-center">
          <v-btn variant="plain"
              href="https://www.linkedin.com/in/jules-digonnet-77265a233/"
              target="_blank"
          >
            <v-icon> mdi-linkedin </v-icon>
          </v-btn >
        </v-col>
      </v-container>
      <v-container  class="flex-column align-center justify-center mt-0 mb-0">
        <v-row class=" justify-center " >
          <p class="footer-text text-center">&copy; {{ $t('footer.about') }} | </p>
          <v-btn density="compact"  variant="text" class="footer-text ma-0" href="/mentions-legales">{{ $t('footer.TermsOfUse') }}</v-btn>
        </v-row>
      </v-container>
</template>

<script setup>
import { ref, watchEffect } from 'vue'
import { useTheme } from 'vuetify'
const theme = useTheme()
const logoSrc = ref('/img/logo-blanc.png')
watchEffect(() => {
  logoSrc.value = theme.global.current.value.dark ? '/img/logo-blanc.png' : '/img/logo-noir.png'
})

</script>


<style lang="scss">
.custom-app-footer{
  border: 1px solid red !important;

}
.v-footer {
  height: 400px;
}
</style>