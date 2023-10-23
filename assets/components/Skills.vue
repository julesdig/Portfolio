<template>
  <div id="skills">
    <div v-for="(section, index) in sections" :key="index" :class="section.class ">
      <div class="container-fluid d-flex flex-md-row justify-content-between align-items-center mt-3">
        <div v-if="section.imagePosition === 'left'" class="col-md-6 d-flex justify-content-center section-img mb-3">
          <img :src="section.image" :alt="section.title" class="rounded img-fluid">
        </div>
        <div class="col-md-6 skill d-flex flex-column justify-content-center">
          <div class="skill__content">
            <h1 class="skill__title" v-if="index === 0">{{ $t('dashboard.projects.title') }}</h1>
            <div class="skill__text"><h2>{{ $t(section.title) }}</h2></div>
            <div class="skill__text">{{ $t(section.description) }}</div>
            <div class="skill-bubbles">
              <div v-for="skill in section.skills" :key="skill" class="skill-bubble">
                <span class="skill-name">{{ $t(`dashboard.skills.${skill}`) }}</span>
              </div>
            </div>
          </div>
        </div>
        <div v-if="section.imagePosition === 'right'" class="col-md-6 d-flex justify-content-center section-img mb-3">
          <img :src="section.image" :alt="section.title" class="rounded img-fluid">
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { $t } from '../i118n.js';

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
    skills: ['php', 'html', 'css', 'postgresql', 'bootstrap', 'javascript', 'python', 'fastapi', 'symfony', 'docker', 'git'],
  },
  {
    class: 'skillsWhyte',
    imagePosition: 'left',
    image: '/img/projectEngineer.png',
    title: 'dashboard.projects.portfolio_ecole_ingenieur.title',
    description: 'dashboard.projects.portfolio_ecole_ingenieur.description',
    skills: ['php', 'html', 'css', 'mysql', 'bootstrap', 'javascript', 'vuejs', 'symfony','docker', 'git'],
  },
];
</script>

<style lang="scss">
@import './../styles/skills.scss';

</style>
