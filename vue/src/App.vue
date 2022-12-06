
<template>
  <div id="app">
    <div id="nav" class = "to-the-right">
     <router-link class = "button is-link" :to="{ name: 'login' }" v-if="$store.state.token == ''">Login</router-link>&nbsp;|&nbsp;
      <router-link class = "button is-link" :to="{ name: 'register' }" v-if="$store.state.token == ''">Need an account?</router-link>
      <router-link class = "button is-warning" v-bind:to="{ name: 'home' }" v-if="$store.state.token != ''">Home</router-link>&nbsp;|&nbsp;
      <router-link class = "button is-primary" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
    <div id="footer">
    &copy;The Jenn Company
    <router-link :to="{ name: 'employee-login'}" v-if="$store.state.token == ''"> Employee Login</router-link>
  </div>
  </div>
  
</template>

<style>
.to-the-right{
  display: flex;
  justify-content: flex-end;
}
</style>
