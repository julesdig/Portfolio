<template>
  <div id="compagny" class="compagny container-fluid d-flex flex-column flex-md-row justify-content-between align-items-center">
    <div class="col-md-6 d-flex justify-content-center section-img mb-3">
      <img src="https://via.placeholder.com/800x600" alt="Photo" class="rounded img-fluid">
    </div>
    <div class="col-md-6 company d-flex flex-column justify-content-center">
      <article class="company__content">
        <b><h1 class="company__title">{{ $t('dashboard.compagny.title') }}</h1></b>
        <div class="company__text" ><h5><b>{{ $t('dashboard.compagny.texte.title') }}</b></h5></div>
        <div class="company__text" >{{ $t('dashboard.compagny.texte.part1') }}</div>
        <div class="company__text" >{{ $t('dashboard.compagny.texte.part2') }}</div>
        <div class="company__text" >{{ $t('dashboard.compagny.texte.part3') }}</div>
        <div class="company__text" >{{ $t('dashboard.compagny.texte.part4') }}</div>
      </article>
    </div>
  </div>
</template>

<script setup>
  import {$t} from '../i118n.js';
</script>

<style lang="scss">
@import './../styles/compagny.scss';
</style>
