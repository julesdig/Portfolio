<template>
  <div id="study" class="studing container-fluid d-flex flex-column flex-md-row justify-content-between align-items-center">
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
                <li>{{ $t('dashboard.study.BTS.development.title') }}<span class="ms-1" data-bs-toggle="tooltip" data-bs-placement="top" :title="$t('dashboard.study.BTS.development.texte')"  data-bs-delay="0" ><i class="bi bi-question-circle-fill"></i></span></li>
                <li>{{ $t('dashboard.study.BTS.projectManagement.title') }} <span class="ms-1" data-bs-toggle="tooltip" data-bs-placement="top" :title="$t('dashboard.study.BTS.projectManagement.texte')" data-bs-delay="0" ><i class="bi bi-question-circle-fill"></i></span></li>
                <li>{{ $t('dashboard.study.BTS.dataBase.title') }}<span class="ms-1" data-bs-toggle="tooltip" data-bs-placement="top" :title="$t('dashboard.study.BTS.dataBase.texte')" data-bs-delay="0" ><i class="bi bi-question-circle-fill"></i></span></li>
                <li>{{ $t('dashboard.study.BTS.communication.title') }}<span class="ms-1" data-bs-toggle="tooltip" data-bs-placement="top" :title="$t('dashboard.study.BTS.communication.texte')"  data-bs-delay="0" ><i class="bi bi-question-circle-fill"></i></span></li>
              </ul>
            </div>
          </div>
          <div class="study__education-item">
            <h3>{{ $t('dashboard.study.engineer.title') }}</h3>
            <p class="study__education-date">{{ $t('dashboard.study.engineer.date') }}</p>
            <div class="study__education-description">
              <p>{{ $t('dashboard.study.units') }}</p>
              <ul>
                <li>{{ $t('dashboard.study.engineer.dataBase.title') }}  <span class="ms-1" data-bs-toggle="tooltip" data-bs-placement="top" :title="$t('dashboard.study.engineer.dataBase.texte')"  data-bs-delay="0" ><i class="bi bi-question-circle-fill"></i></span></li>
                <li>{{ $t('dashboard.study.engineer.development.title') }}  <span class="ms-1"  data-bs-toggle="tooltip" data-bs-placement="top" :title="$t('dashboard.study.engineer.development.texte')" data-bs-delay="0" ><i class="bi bi-question-circle-fill"></i></span></li>
                <li>{{ $t('dashboard.study.engineer.electronics.title') }}  <span class="ms-1" data-bs-toggle="tooltip" data-bs-placement="top" :title="$t('dashboard.study.engineer.electronics.texte')" data-bs-delay="0" ><i class="bi bi-question-circle-fill"></i></span></li>
                <li>{{ $t('dashboard.study.engineer.professionalEnvironment.title') }}  <span class="ms-1" data-bs-toggle="tooltip" data-bs-placement="top" :title="$t('dashboard.study.engineer.professionalEnvironment.texte')" data-bs-delay="0" ><i class="bi bi-question-circle-fill"></i></span></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-6 d-flex justify-content-center">
      <img src="img/telecom.png" alt="Télécom" class="rounded img-fluid">
    </div>
  </div>
</template>

<script setup>

</script>
<style lang="scss">
@import './../styles/study.scss';
</style>
