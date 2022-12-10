<template>
  <div class="tile">
    <div class="tile is-parent is-vertical">
      <article class="tile is-child notification is-primary">
        <p class="title">Workout for the Day</p>
        <!-- <p class="subtitle">Top tile</p> -->
        <div class="field">
          <label class="label">Exercise</label>
          <div class="control display">
            <input
              class="input"
              type="text"
              placeholder="Name of Machine/Exercise"
              v-model ="exercise.name"
            />&nbsp;:&nbsp;
            <input class="input" type="text" placeholder="time" v-model="exercise.time">
          </div>
          <div class="field">
            <label class="label">Exercise Data</label>
            <!-- <label class ="label" for="reps">Reps</label>
            <label class="label" for="weight">Metric</label> -->
            <div class="control display">
              <input
                class="input int2"
                type="text"
                placeholder="Sets"
                v-model="exercise.sets"
              />&nbsp;X&nbsp;
              <input
                class="input int2"
                type="text"
                placeholder="Reps"
                v-model="exercise.reps"
              />&nbsp;:&nbsp;
              <input class="input int2" type="text" placeholder="weight" v-model="exercise.weight" />
            </div>
          </div>
          <button class="button is-link btn-first" v-on:click="addCurrentExercise()" >Add</button>
        </div>
      </article>
    </div>
    <div class="tile is-parent">
      <article class="tile is-child notification is-info">
        <class-schedule />
      </article>
    </div>
  </div>
</template>

<script>
import ClassSchedule from "../components/ClassSchedule.vue";
import workoutService from "../services/WorkoutService"
// import userService from '@vue/composition-api'
export default {
  components: { ClassSchedule },
  name: "todays-workout",
  props:["visitId", "userId"],
  data() {
    return{
      exercisesForThatDay:[],
      exercise:{
        workoutId:"",
        visitId: this.visitId,
        exerciseId:"",
        name:"",
        sets:"",
        reps:"",
        time:""
      }
    }
  },
  methods:{
    addCurrentExercise(){
      workoutService
      .addExercise(this.exercise, this.userId)
      .then((response)=>{
        if(response.status == 201){
          this.exercise = response.data;
          
        }
      })
    }
  }
};
</script>
<style scoped>
.int2 {
  width: 30%;
}
.display {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.btn-first {
  background-color: #58d9eb !important;
  border: 2px solid #317680 !important;
  display: flex;
}
</style>
