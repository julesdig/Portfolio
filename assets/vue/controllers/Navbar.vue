<template>
  <v-app class="custom-app">
      <v-app-bar rounded>
        <v-img
            :src="logoSrc"
        ></v-img>
        <v-spacer></v-spacer>
        <v-row>
          <v-col v-for="n in 3" :key="n" cols="4">
            <v-list lines="one">
              <v-list-item>
                <v-btn  :href="'/home/#' + ['company', 'study', 'skills'][n-1]">{{ $t('navbar.' + ['company', 'study', 'skills'][n-1]) }}</v-btn>
              </v-list-item>
            </v-list>
          </v-col>
        </v-row>
        <v-spacer></v-spacer>
        <v-col cols="auto">
          <v-btn block color="orange-darken-2" variant="flat" @click="switchLocale()" icon="mdi-translate"  ></v-btn>
        </v-col>
        <v-col cols="auto">
          <v-btn @click="toggleTheme" icon="mdi-theme-light-dark"></v-btn>
        </v-col>
      </v-app-bar>
  </v-app>
</template>

<script setup>
import { useTheme } from 'vuetify'
import { ref, watchEffect } from 'vue'
const theme = useTheme()
const logoSrc = ref('/img/logo-blanc.png')

watchEffect(() => {
  logoSrc.value = theme.global.current.value.dark ? '/img/logo-blanc.png' : '/img/logo-noir.png'
})
function toggleTheme () {
  theme.global.name.value = theme.global.current.value.dark ? 'light' : 'dark'
}

</script>
<script>
export default {
  methods: {
    switchLocale() {
      this.$i18n.locale = this.$i18n.locale === 'fr' ? 'en' : 'fr';
    }
  },
};
</script>
<style scoped>
.custom-app {
  height: 64px;
  max-height: 64px;
}
</style>

