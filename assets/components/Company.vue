<template>
  <v-container fluid id="company" class="container-company d-flex align-center justify-center">
      <v-col cols="6"  class="d-flex align-center justify-center section-img ">
        <v-card variant="flat" class="d-flex align-center justify-center">
          <v-img :width="700" aspect-ratio="16/9" src="/img/Datiplus.jpeg" alt="La photo présente Jules Digonnet associé à la marque DatiPlus de Nov'in.">
            <template v-slot:placeholder>
              <div class="d-flex align-center justify-center fill-height">
                <v-progress-circular color="grey-lighten-4" indeterminate></v-progress-circular>
              </div>
            </template>
          </v-img>
        </v-card>
      </v-col>
      <v-col cols="6"  class="d-flex justify-center">
          <article class="company__content">
            <b><h1 class="company__title">{{ $t('dashboard.compagny.title') }}</h1></b>
            <div class="company__text"><h5><b>{{ $t('dashboard.compagny.texte.title') }}</b></h5></div>
            <div class="company__text">{{ $t('dashboard.compagny.texte.part1') }}</div>
            <div class="company__text">{{ $t('dashboard.compagny.texte.part2') }}</div>
            <div class="company__text">{{ $t('dashboard.compagny.texte.part3') }}</div>
            <div class="company__text">{{ $t('dashboard.compagny.texte.part4') }}</div>
          </article>
      </v-col>
  </v-container>
</template>

<script setup>

</script>

<style lang="scss">
.container-company {
  height: 100vh;
  display: flex;
}

.company__content {
  max-width: 800px;
  padding: 2rem;
  text-align: center;
}

.company__title {
  font-size: 3rem;
  font-weight: bold;
  margin-bottom: 1rem;
}

.company__title::after {
  content: "";
  display: block;
  width: 50%;
  height: 3px;
  background-color: orange;
  margin: 1rem auto;
}

.company__text {
  font-size: 1.2rem;
  line-height: 1.5;
  margin-top: 2rem;
}

@media only screen and (max-width: 1024px) {
  .container-company {
    height: auto;
    flex-direction: column;
  }
  .section-img {
    order: 2;
  }
}

</style>