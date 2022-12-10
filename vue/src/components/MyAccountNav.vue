<template>

    <div>
        <aside class="menu">
            <p class="menu-label">My Account</p>
            <ul class="menu-list size-8">
       <li> <router-link v-bind:to="{ name: 'usersInfo' }">Personal Information </router-link></li>
       <li> <router-link v-bind:to="{ name: 'userHistory' }">Workout History</router-link></li>
        </ul>
         </aside>
    </div>
   
</template>