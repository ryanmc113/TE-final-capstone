<template>
  <div id="app">
    <div id="nav" class = "to-the-left">
      <router-link class = "button is-warning" v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link class = "button is-link" :to="{ name: 'register' }" v-if="$store.state.token == ''">Need an account?</router-link>
      <router-link class = "button is-primary" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
  </div>
</template>

<style>
.to-the-left{
  display: flex;
  justify-content: flex-end;
}
</style>
