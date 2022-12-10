<template>
    <div>

<workouts v-bind:visit-id="parseInt($route.params.id)"/>
    </div>
</template>

<script>
import Workouts from '../components/Workouts.vue'
export default {
name: "Workouts",
   components: {
       Workouts,
       
   }
}
</script>
