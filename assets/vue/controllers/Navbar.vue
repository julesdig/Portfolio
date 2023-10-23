<template>
  <header class="row align-items-center m-2"> 
  <div class="col-lg-2 d-flex justify-content-end">
    <img src="img/logo.png"  width="40" height="32" alt="Logo">
  </div>
  <div class="col-lg-8 d-flex justify-content-center">
    <ul class="nav col-7 col-md-auto mb-2 d-flex justify-content-start mb-md-0">
        <li><a href="#compagny" class="nav-link px-2 link-dark">{{ $t('navbar.compagny') }}</a></li>
        <li><a href="#study" class="nav-link px-2 link-dark">{{ $t('navbar.study') }}</a></li>
        <li><a href="#skills" class="nav-link px-2 link-dark">{{ $t('navbar.skills') }}</a></li>
      </ul>
  </div>
  <div class="col-lg-2 dropdown text-center">
    <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
      <i class="bi bi-translate"></i>
    </a>
    <ul class="dropdown-menu text-small" style="">
      <li><a class="dropdown-item" href="#">Français</a></li>

    </ul>
  </div>
      
  </header>
</template>

<script setup>
  import {$t} from './../../i118n.js';
</script>
<style lang="scss">
@import './../../styles/navbar.scss';

</style>
