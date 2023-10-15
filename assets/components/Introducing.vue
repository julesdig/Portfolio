<template>
  <div class="introducing container-fluid d-flex justify-content-between align-items-center">
    <div class="col-fluid-6 text-dark p-5">
      <p class="big-text ">
        <span class="d-flex justify-content-center" >{{ $t('dashboard.introducing.study') }} <br> </span>
        <span class="d-flex justify-content-center">{{ $t('dashboard.introducing.intership') }}</span>
      </p>
    </div>
    <div class="col-fluid-6  d-flex justify-content-end section-img">
      <img src="https://via.placeholder.com/800x600" alt="Photo" class="rounded img-fluid">
    </div>
  </div>
</template>
<script setup>
  import {$t} from '../i118n.js';
</script>
<style lang="scss">
@import './../styles/introducing.scss';

</style>
