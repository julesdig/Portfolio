<template>
  <v-app>
    <Navbar></Navbar>
    <v-main class="mt-auto">
      <v-container class="mt-auto">
        <v-col>
          <h1 class="display-1">{{ $t('legalNotice.title') }}</h1>
        </v-col>
        <v-col>
          <v-list lines="three" >
            <v-list-item v-for="(section, index) in sections" :key="index">
              <v-list-item>
                <v-list-item-title>
                  <h2>{{ $t(section.title) }}</h2>
                </v-list-item-title>
                <div v-html="$t(section.content)" ></div>
              </v-list-item>
            </v-list-item>
          </v-list>
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
        { title: 'legalNotice.information.title', content: 'legalNotice.information.content' },
        { title: 'legalNotice.hosting.title', content: 'legalNotice.hosting.content' },
        { title: 'legalNotice.intellectualProperty.title', content: 'legalNotice.intellectualProperty.content' },
        { title: 'legalNotice.noPersonalData.title', content: 'legalNotice.noPersonalData.content' },
        { title: 'legalNotice.cookies.title', content: 'legalNotice.cookies.content' },
        { title: 'legalNotice.responsibility.title', content: 'legalNotice.responsibility.content' },
        { title: 'legalNotice.externalLinks.title', content: 'legalNotice.externalLinks.content' },
        { title: 'legalNotice.contact.title', content: 'legalNotice.contact.content' },
      ],
    };
  },
};

</script>

