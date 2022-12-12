<template>
    <div>
<my-account-nav/>
<my-workouts />
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
