<template>
    <div class="container">
      <h1>{{trans(title)}}</h1>
      <button class="btn btn-primary">Cliquez ici</button>
    </div>
  </template>

<script setup>
import { trans, title } from '../../translator';

</script>

<style lang="scss">
@import './../../styles/navbar.scss';
</style>