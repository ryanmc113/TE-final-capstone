<template>
    <div>
<my-workouts v-bind:visitId="parseInt($route.params.id)"/>
    </div>
</template>

<script>
import MyWorkouts from '../components/MyWorkouts.vue'
export default {
name: "Workouts",
   components: {
       MyWorkouts,
       
   }
}
</script>
