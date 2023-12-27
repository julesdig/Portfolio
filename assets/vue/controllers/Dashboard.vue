<template>
  <v-app>
    <Navbar></Navbar>
    <v-main class="mt-auto">
      <introducing></introducing>
      <company></company>
      <study></study>
      <skills></skills>
    </v-main>
    <Footer></Footer>
  </v-app>
</template>

<script setup>
  import Navbar from "./Navbar.vue";
  import Footer from "./Footer.vue";
  import introducing from './../../components/Introducing.vue';
  import company from './../../components/Company.vue';
  import study from './../../components/Study.vue';
  import skills from './../../components/Skills.vue';
</script>
