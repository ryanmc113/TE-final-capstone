<template>
    <div>
<my-account-nav/>
<my-workouts v-bind:visitId="parseInt($route.params.id)"/>
    </div>
</template>

<script>
import MyWorkouts from '../components/MyWorkouts.vue'
import MyAccountNav from '../components/MyAccountNav.vue'
export default {
name: "Workouts",
   components: {
       MyWorkouts,
       MyAccountNav
   }
}
</script>
