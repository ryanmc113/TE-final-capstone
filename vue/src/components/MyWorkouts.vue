<template>
  <div class="workouts">
    <table>
      <thead>
        <tr>
          My Workout
        </tr>
        <tr>
          {{
            date
          }}
        </tr>
      </thead>
      <tbody>
        <tr v-for="workout in myWorkouts" v-bind:key="workout.workout_id">
          <td>{{ workout.name }}</td>
          <td>{{ workout.sets }}</td>
          <td>{{ workout.reps }}</td>
          <td>{{ workout.weight }}</td>
          <td>{{ workout.minutes }}</td>
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
