<template>
  <v-container fluid :class="{'container-introducing': true, 'dark-background': isDarkMode, 'd-flex justify-center align-center': true}">
    <v-col cols="6">
      <p class="big-text text-center typewriter-text">
        <span>{{ $t('dashboard.introducing.study') }}<br></span>
        <span>{{ $t('dashboard.introducing.internship') }}</span>
      </p>
    </v-col>
  </v-container>
</template>

<script setup>


import { useTheme } from 'vuetify'
import {ref, watchEffect} from "vue";
const theme = useTheme()

const isDarkMode = ref(theme.global.current.value.dark)

watchEffect(() => {
  isDarkMode.value = theme.global.current.value.dark
})
</script>

<style scoped>
.big-text {
  font-family: Arial, sans-serif;
  font-size: 4rem;
  font-weight: bold;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}
.typewriter-text {
  overflow: hidden;
  white-space: nowrap;
  margin: 0 auto;
  letter-spacing: .15em;
  border-right: .15em solid transparent;
  animation: typing 3.5s steps(40, end), blink-caret .75s step-end 4;
}

@keyframes typing {
  from { width: 0 }
  to { width: 100% }
}

@keyframes blink-caret {
  from, to { border-color: transparent }
  50% { border-right: .15em solid black; }
}


.container-introducing {
  background-color: #f5f5f5;
  height: 100vh;
}

.dark-background {
  background-color: #2a2929;
}
@media only screen and (max-width: 1500px) {
  .big-text {
    font-size: 3.5rem;
  }
}
@media only screen and (max-width: 1300px) {
  .big-text {
    font-size: 3rem;
  }
}
@media only screen and (max-width: 1100px) {
  .big-text {
    font-size: 2.5rem;
  }
}
@media only screen and (max-width: 950px) {
  .big-text {
    font-size: 1.9rem;
  }
}
@media only screen and (max-width: 750px) {
  .big-text {
    font-size: 1.5rem;
  }
}
@media only screen and (max-width: 600px) {
  .big-text {
    font-size: 1rem;
  }
}
</style>