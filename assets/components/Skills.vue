<template>
  <div id="skills">
    <div v-for="(section, index) in sections" :key="index" >
      <v-container fluid :class="[section.class, {'dark-background': isDarkMode && section.class === 'skillsGrey', 'd-flex align-center justify-center': true}]">
        <div v-if="section.imagePosition === 'left'" class="col-md-6 d-flex justify-content-center section-img mb-3">
          <v-card variant="flat" :class="{'section.class': true, 'dark-background': isDarkMode && section.class === 'skillsGrey','d-flex align-center justify-center':true}">
            <v-img :width= "700" aspect-ratio="16/9" :src="section.image" :alt="section.title">
              <template v-slot:placeholder>
                <div class="d-flex align-center justify-center fill-height">
                  <v-progress-circular color="grey-lighten-4" indeterminate></v-progress-circular>
                </div>
              </template>
            </v-img>
          </v-card>
        </div>
        <v-col cols="6" md="6" class="d-flex justify-center skill ">
          <div class="skill__content">
            <h1 class="skill__title" v-if="index === 0">{{ $t('dashboard.projects.title') }}</h1>
            <div class="skill__text"><h2>{{ $t(section.title) }}</h2></div>
            <div class="skill__text">{{ $t(section.description) }}</div>
            <div class="skill-bubbles">
              <div v-for="skill in section.skills" :key="skill" :class="{'skill-bubble': true, 'dark-background': isDarkMode }">
                <span class="skill-name">{{ $t(`dashboard.skills.${skill}`) }}</span>
              </div>
            </div>
          </div>
        </v-col>
        <v-col cols="6" md="md" v-if="section.imagePosition === 'right'" class="d-flex justify-center section-img mb-3">
          <v-card variant="flat" :class="{'section.class': true, 'dark-background': isDarkMode && section.class === 'skillsGrey','d-flex align-center justify-center':true}">
            <v-img :width= "700" aspect-ratio="16/9" :src="section.image" :alt="section.title">
              <template v-slot:placeholder>
                <div class="d-flex align-center justify-center fill-height">
                  <v-progress-circular color="grey-lighten-4" indeterminate></v-progress-circular>
                </div>
              </template>
            </v-img>
          </v-card>
        </v-col>
      </v-container>
    </div>
  </div>
</template>

<script setup>
import { useTheme } from 'vuetify'
import {ref, watchEffect} from "vue";
const theme = useTheme()

const isDarkMode = ref(theme.global.current.value.dark)

watchEffect(() => {
  isDarkMode.value = theme.global.current.value.dark
})
const sections = [
  {
    class: 'skillsWhyte',
    imagePosition: 'left',
    image: '/img/projetsSiteduclubdefootFcTence.jpg',
    title: 'dashboard.projects.fc_tence_foot.title',
    description: 'dashboard.projects.fc_tence_foot.description',
    skills: ['php', 'html', 'css', 'mysql'],
  },
  {
    class: 'skillsGrey',
    imagePosition: 'right',
    image: '/img/mairieTence.png',
    title: 'dashboard.projects.mairie_tence.title',
    description: 'dashboard.projects.mairie_tence.description',
    skills: ['php', 'html', 'css', 'mysql', 'bootstrap','git'],
  },
  {
    class: 'skillsWhyte',
    imagePosition: 'left',
    image: '/img/projectBTS.png',
    title: 'dashboard.projects.portfolio_bts.title',
    description: 'dashboard.projects.portfolio_bts.description',
    skills: ['php', 'html', 'css', 'mysql', 'bootstrap', 'javascript', ],
  },
  {
    class: 'skillsGrey',
    imagePosition: 'right',
    image: '/img/EspaceClient.png',
    title: 'dashboard.projects.mon_entreprise.title',
    description: 'dashboard.projects.mon_entreprise.description',
    skills: ['php', 'html', 'css', 'postgresql', 'bootstrap', 'javascript', 'python', 'fastapi', 'symfony', 'docker', 'git','linux'],
  },
  {
    class: 'skillsWhyte',
    imagePosition: 'left',
    image: '/img/projectEngineer.png',
    title: 'dashboard.projects.portfolio_ecole_ingenieur.title',
    description: 'dashboard.projects.portfolio_ecole_ingenieur.description',
    skills: ['php', 'html', 'css', 'mysql', 'vuetify', 'javascript', 'vuejs', 'symfony','docker', 'git'],
  },
  {
    class: 'skillsGrey',
    imagePosition: 'right',
    image: '/img/Datawave.png',
    title: 'dashboard.projects.datawave.title',
    description: 'dashboard.projects.datawave.description',
    skills: ['php', 'html', 'css', 'mysql','docker', 'git'],
  },
];
</script>

<style lang="scss">
@import './../styles/skills.scss';
.dark-background {
  background-color: #2a2929;
}
</style>
