<template>
  <div class="home">

    <div class="btn-first-home"><check-in-button-for-users/></div>
    <!-- <check-in-button-for-users/> -->
    <todays-workout/>
    <workout-assistance/>
  </div>
</template>

<script>
import checkInButtonForUsers from "../components/CheckInButtonForUsers.vue"
import todaysWorkout from "../components/TodaysWorkout.vue"
import workoutAssistance from "../components/WorkoutAssistance.vue"
export default {
  components:{
    todaysWorkout,
    workoutAssistance,
    checkInButtonForUsers,
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
</style>
