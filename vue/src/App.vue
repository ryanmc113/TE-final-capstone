
<template>
  <div id="app">
    
    <div id="nav" class="to-the-right">
      <router-link
    id="to-the-left"
        class="button is-primary"
        v-bind:to="{ name: 'logout' }"
        v-if="$store.state.token != ''"
        >Logout</router-link
      >
       <!-- usersinfo -->
      <router-link
        class="button is-warning"
        v-bind:to="{ name: 'home' }"
        v-if="$store.state.token != ''"
      >
        Home</router-link
      >
      
      <router-link
        class="button is-link"
        :to="{ name: 'login' }"
        v-if="$store.state.token == ''"
        >Login</router-link
      >&nbsp;<i class="fa-solid fa-dumbbell"></i>&nbsp;
      <router-link
        class="button is-link"
        :to="{ name: 'register' }"
        v-if="$store.state.token == ''"
        >Need an account?</router-link
      >
      <router-link
        class="button is-primary"
        v-bind:to="{ name: 'usersInfo' }"
        v-if="$store.state.token != ''"
        >My Account</router-link
      >
      
    </div>
    <router-view />
    <div class="content has-text-centered" id="theFoot">
      &copy;The Jenn Company
      <router-link
        :to="{ name: 'employee-login' }"
        v-if="$store.state.token == ''"
      >
        Employee Login</router-link
      >
    </div>
  </div>
</template>

<style>

.to-the-left {
  
  justify-content: flex-start !important;
  
}
.to-the-right {
  display: flex;
  justify-content: flex-end;
  align-items: center;
}
#theFoot {
  display: flex !important;
  justify-content: space-between !important;
  padding: 7px !important;
}

/* .footer{
   position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: red;
  color: white;
  text-align: center;
} */
</style>
