
<template>
  <div id="app">
    
    <div id="nav" class="to-the-right">
   
       <!-- usershome -->
      <router-link
        class="button is-warning"
        v-bind:to="{ name: 'home' }"
        v-if="$store.state.token != '' && $store.state.employeeLoggedIn == ''"
      >
        Home</router-link
      >
      <!-- employeehome -->
      <router-link
        class="button is-warning"
        v-bind:to="{ name: 'employee-account' }"
        v-if="$store.state.token != '' && $store.state.employeeLoggedIn == true"
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
<div  v-if="$store.state.token != ''" class="dropdown is-hoverable">
  <div class="dropdown-trigger">
    <button class="button" aria-haspopup="true" aria-controls="dropdown-menu2">
      <span>My Account</span>
      <span class="icon is-small">
        <i class="fas fa-angle-down" aria-hidden="true"></i>
      </span>
    </button>
  </div>
  <div class="dropdown-menu" id="dropdown-menu2" role="menu">
    <div class="dropdown-content">
      
        <router-link v-bind:to="{ name: 'usersInfo' }"
            >Personal Information
          </router-link>
      
      <hr class="dropdown-divider">
     
                 <router-link v-bind:to="{ name: 'userHistory' }"
            >Workout History</router-link
          >
      
      <hr class="dropdown-divider">
      <router-link
          
         
          v-bind:to="{ name: 'logout' }"
          v-if="$store.state.token != ''"
          >Logout</router-link
        >
    </div>
  </div>
</div>




      
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
  flex-basis: 5px;
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding-top: 12px;
  padding-right: 12px;
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
