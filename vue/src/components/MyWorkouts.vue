<template>
  <div class="workouts">
    <h1 class="is-size-2">My Exercises</h1>
    <table>
      <thead>
        <th>Exercise Name</th>
        
        <th>Sets</th>
        <th>Reps</th>
        <th>Weight</th>
        <th>Time</th>
      </thead>
      <tbody class="inline">
        <tr v-for="workout in myWorkouts" v-bind:key="workout.workout_id">
          <td>
            <div class="input">
              {{ workout.name }}
            </div>
          </td>
          
          <td>
            <div class="input">
              {{ workout.sets }}
            </div>
          </td>
          
          <td>
            <div class="input">{{ workout.reps }}</div>
          </td>
          
          <td>
            <div class="input">{{ workout.weight }}</div>
          </td>
       
          <td>
            <div class="input">{{ workout.minutes }}</div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import WorkoutService from "../services/WorkoutService.js";
export default {
  props: { visitId: Number },
  data() {
    return {
      myWorkouts: [],
    };
  },
  created() {
    this.getMyWorkouts();
  },
  methods: {
    getMyWorkouts() {
      WorkoutService.getExercisesLogged(this.visitId).then((response) => {
        this.myWorkouts = response.data;
      });
    },
  },
};
</script>
 
 <style scoped>
.inline {
}
</style>