<template>
  <div class="home">
    <h1>Home</h1>
    <todays-workout/>
    <p>You must be authenticated to see this</p>
  </div>
</template>

<script>
import todaysWorkout from "../components/TodaysWorkout.vue"
export default {
  components:{
    todaysWorkout

  },
  name: "home"
};
</script>
