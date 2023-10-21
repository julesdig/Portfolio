<template>
  <nav class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between m-2">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <img src="img/logo.png"  width="40" height="32" alt="Logo">
      </a>
      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="#compagny" class="nav-link px-2 link-dark">{{ $t('navbar.compagny') }}</a></li>
        <li><a href="#study" class="nav-link px-2 link-dark">{{ $t('navbar.study') }}</a></li>
        <li><a href="#skills" class="nav-link px-2 link-dark">{{ $t('navbar.skills') }}</a></li>
      </ul>

     
    </header>
  </nav>
</template>

<script setup>
  import {$t} from './../../i118n.js';
</script>
<style lang="scss">
@import './../../styles/navbar.scss';

</style>