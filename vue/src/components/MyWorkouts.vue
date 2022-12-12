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
          <div class="input int2">{{workout.name}}</div>
            &nbsp;:&nbsp;
            <div class="input int2">{{workout.sets}}</div>
            &nbsp;:&nbsp;
            <div class="input int2">{{workout.reps}}</div>
            &nbsp;:&nbsp;
            <div class="input int2">{{workout.weight}}</div>
            &nbsp;:&nbsp;
            <div class="input int2">{{workout.minutes}}</div>
          
     
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
