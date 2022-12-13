<template>
  <div class="home">

    <div class="btn-first-home"><check-in-button-for-users/></div>
    &nbsp;&nbsp;
    <random-quote class="quote1"/>
    <!-- <check-in-button-for-users/> -->
    <todays-workout/>
    <workout-assistance/>
  </div>
</template>

<script>
import checkInButtonForUsers from "../components/CheckInButtonForUsers.vue"
import todaysWorkout from "../components/TodaysWorkout.vue"
import workoutAssistance from "../components/WorkoutAssistance.vue"
import RandomQuote from '../components/RandomQuote.vue'
export default {
  components:{
    todaysWorkout,
    workoutAssistance,
    checkInButtonForUsers,
    RandomQuote,
  },
  name: "home"
};
</script>
<style scoped>
.btn-first-home{
  display: flex;
  align-content: center;
  justify-content: center;
}

/* .quote {
  display: flex  !important;
  justify-content: center !important;
  width: 100px;
  height: 100px;
} */
</style>
