<template>
  <v-container fluid id="study" :class="{'studing': true, 'dark-background': isDarkMode, 'd-flex align-center justify-center': true}">
      <v-col cols="6" md="6" class=" d-flex  justify-center">
        <div class="study_component col-md-6">
          <div class="study__content">
            <h1 class="study__title">{{ $t('dashboard.study.title') }}</h1>
            <hr class="study__title-line">
            <div class="study__education">
              <div class="study__education-item">
                <h3>{{ $t('dashboard.study.BTS.title') }}</h3>
                <p class="study__education-date">{{ $t('dashboard.study.BTS.date') }}</p>
                <div class="study__education-description">
                  <p>{{ $t('dashboard.study.units') }}</p>
                  <ul>
                    <li>
                      {{ $t('dashboard.study.BTS.development.title') }}
                      <v-tooltip location="top"  :text="$t('dashboard.study.BTS.development.texte')">
                        <template v-slot:activator="{ props }">
                          <v-icon v-bind="props" >mdi-help-circle-outline</v-icon>
                        </template>
                      </v-tooltip>
                    </li>
                    <li>
                      {{ $t('dashboard.study.BTS.projectManagement.title') }}
                      <v-tooltip location="top" :text="$t('dashboard.study.BTS.projectManagement.texte')">
                        <template v-slot:activator="{ props }">
                          <v-icon v-bind="props" >mdi-help-circle-outline</v-icon>
                        </template>
                      </v-tooltip>
                    </li>
                    <li>
                      {{ $t('dashboard.study.BTS.dataBase.title') }}
                      <v-tooltip location="top" :text="$t('dashboard.study.BTS.dataBase.texte')">
                        <template v-slot:activator="{ props }">
                          <v-icon v-bind="props" >mdi-help-circle-outline</v-icon>
                        </template>
                      </v-tooltip>
                    </li>
                    <li>
                      {{ $t('dashboard.study.BTS.communication.title') }}
                      <v-tooltip location="top" :text="$t('dashboard.study.BTS.communication.texte')">
                        <template v-slot:activator="{ props }">
                          <v-icon v-bind="props" >mdi-help-circle-outline</v-icon>
                        </template>
                      </v-tooltip>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="study__education-item">
                <h3>{{ $t('dashboard.study.engineer.title') }}</h3>
                <p class="study__education-date">{{ $t('dashboard.study.engineer.date') }}</p>
                <div class="study__education-description">
                  <p>{{ $t('dashboard.study.units') }}</p>
                  <ul>
                    <li>
                      {{ $t('dashboard.study.engineer.dataBase.title') }}
                      <v-tooltip location="top"  :text="$t('dashboard.study.engineer.dataBase.texte')">
                        <template v-slot:activator="{ props }">
                          <v-icon v-bind="props" >mdi-help-circle-outline</v-icon>
                        </template>
                      </v-tooltip>
                    </li>
                    <li>
                      {{ $t('dashboard.study.engineer.development.title') }}
                      <v-tooltip location="top"  :text="$t('dashboard.study.engineer.development.texte')">
                        <template v-slot:activator="{ props }">
                          <v-icon v-bind="props" >mdi-help-circle-outline</v-icon>
                        </template>
                      </v-tooltip>
                    </li>
                    <li>
                      {{ $t('dashboard.study.engineer.electronics.title') }}
                      <v-tooltip location="top"  :text="$t('dashboard.study.engineer.electronics.texte')">
                        <template v-slot:activator="{ props }">
                          <v-icon v-bind="props" >mdi-help-circle-outline</v-icon>
                        </template>
                      </v-tooltip>
                    </li>
                    <li>
                      {{ $t('dashboard.study.engineer.professionalEnvironment.title') }}
                      <v-tooltip location="top"  :text="$t('dashboard.study.engineer.professionalEnvironment.texte')">
                        <template v-slot:activator="{ props }">
                          <v-icon v-bind="props" >mdi-help-circle-outline</v-icon>
                        </template>
                      </v-tooltip>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </v-col>
      <v-col cols="6" class="d-flex justify-center section-img mb-3">
        <v-card variant="flat" :class="{'studing': true, 'dark-background': isDarkMode,'d-flex align-center justify-center':true}">
          <v-img :width= "700" aspect-ratio="16/9" src="/img/telecom.png">
            <template v-slot:placeholder>
              <div class="d-flex align-center justify-center fill-height">
                <v-progress-circular color="grey-lighten-4" indeterminate></v-progress-circular>
              </div>
            </template>
          </v-img>
        </v-card>
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
<style lang="scss">


.studing {
  height: 100vh;
  display: flex;
  border-top: 1px solid #ccc;
  background-color: #f5f5f5;
}

.study_component {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100%;
}

.study__content {
  max-width: 800px;
  padding: 2rem;
  text-align: center;
}

.study__title {
  font-size: 3rem;
  font-weight: bold;
  margin-bottom: 1rem;
}

.study__title-line {
  border: 2px solid ;
  border-image: repeating-linear-gradient(to right, #ff0000, #ff0000 33.33%, #00ff00 33.33%, #00ff00 66.66%, #0000ff 66.66%, #0000ff) 1;
  width: 50%;
  margin: 1rem auto;
}

.study__education {
  display: flex;
  justify-content: space-between;
  margin-top: 2rem;
}

.study__education-item {
  width: 45%;
}

.study__education h3 {
  font-size: 2rem;
  font-weight: bold;
  margin-bottom: 0.5rem;
}

.study__education-date {
  font-size: 1.2rem;
  margin-bottom: 1rem;
}

.study__education-description {
  margin-top: 1rem;
}

.study__education-description p {
  font-weight: bold;
}

.study__education-description ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

.study__education-description li {
  margin-bottom: 0.5rem;
}

.dark-background {
  background-color: #2a2929;
}

@media only screen and (max-width: 1024px) {
  .studing {
    height: auto;
    flex-direction: column;
  }
  .section-img {
    order: 2;
  }
}
</style>
