<template>
  <v-app>
    <Navbar></Navbar>
    <v-main class="mt-auto">
      <v-container class="mt-auto">
        <v-col>
          <h1 class="display-1">{{ $t('legalNotice.title') }}</h1>
        </v-col>
        <v-col>
          <v-row>
            <v-col cols="12" md="6" v-for="section in sections" :key="section.title">
              <h2 class="display-2">{{ $t(section.title) }}</h2>
              <p v-html="$t(section.content, { email: section.email }).replace(/\\n/g, '<br>')"></p>
            </v-col>
          </v-row>
        </v-col>
      </v-container>
    </v-main>
    <Footer></Footer>
  </v-app>
</template>
<script setup>
import Navbar from "./Navbar.vue";
import Footer from "./Footer.vue";
</script>
<script>
export default {
  data() {
    return {
      sections: [
        { title: 'legalNotice.information.title', content: 'legalNotice.information.content', email: 'judigonnet@gmail.com' },
        { title: 'legalNotice.hosting.title', content: 'legalNotice.hosting.content' },
        { title: 'legalNotice.intellectualProperty.title', content: 'legalNotice.intellectualProperty.content' },
        { title: 'legalNotice.noPersonalData.title', content: 'legalNotice.noPersonalData.content' },
        { title: 'legalNotice.cookies.title', content: 'legalNotice.cookies.content' },
        { title: 'legalNotice.responsibility.title', content: 'legalNotice.responsibility.content' },
        { title: 'legalNotice.externalLinks.title', content: 'legalNotice.externalLinks.content' },
        { title: 'legalNotice.contact.title', content: 'legalNotice.contact.content' , email: 'judigonnet@gmail.com'},
      ],
    };
  },
};

</script>

