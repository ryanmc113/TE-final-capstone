<template>
  <div class="tile">
    <div class="tile is-parent is-vertical">
      <article class="tile is-child notification is-primary">
        <p class="title">Workout for the Day</p>
        <!-- <p class="subtitle">Top tile</p> -->
        <form @submit.prevent> 
        <div class="field">
          <label class="label" for="exerciseName">Exercise</label>
          <div class="control display">
            <input
              class="input"
              type="text"
              placeholder="Name of Machine/Exercise"
              v-model="exercise.name"
            />&nbsp;:&nbsp;
            <input
            
              class="input"
              type="text"
              placeholder="Minutes (#)"
              v-model="exercise.minutes"
            />
          </div>
          <div class="field">
            <label class="label">Exercise Data</label>
            <!-- <label class ="label" for="reps">Reps</label>
            <label class="label" for="weight">Metric</label> -->
            <div class="control display">
              <input
                class="input int2"
                type="text"
                placeholder="Sets (#)"
                v-model="exercise.sets"
              />&nbsp;X&nbsp;
              <input
                class="input int2"
                type="text"
                placeholder="Reps (#)"
                v-model="exercise.reps"
              />&nbsp;:&nbsp;
              <input
                class="input int2"
                type="text"
                placeholder="Weight (lbs)"
                v-model="exercise.weight"
              />
            </div>
          </div>
          <!-- possibly need a submit.prevent on this add so it wont refresh to display the exercise at the bottom -->
          <br>
          <button
          type= "submit"
            class="button is-link btn-first"
          
            v-on:click="addCurrentExercise()"
          >
            Add
          </button>
          <br>
        </div>
        </form>
        <!-- <div
          v-for="exercisesDisplayed in exerciseForThatDay"
          v-bind:key="exerciseForThatDay.id"
        > -->
        <div class="field">
          <div class="display">
          <div class="input int3 ">Name:</div>
          &nbsp;&nbsp;
          <div class="input int3">Sets:</div>
          &nbsp;&nbsp;
          <div class="input int3"> Reps: </div>
          &nbsp;
          <div class="input int3">Weight (lbs):</div>
          &nbsp;
          <div class="input int3">Minutes:</div>
          </div>
          
          <!-- needs to have a v-show if it has something in the array that i made. v-show time if reps and weight are empty -->
          <div class="control display" v-for="exercises in exercisesForThatDay" v-bind:key="exercises.id">
            
            <div class="input int2">{{exercises.name}}</div>
            &nbsp;:&nbsp;
            <div class="input int2">{{exercises.sets}}</div>
            &nbsp;:&nbsp;
            <div class="input int2">{{exercises.reps}}</div>
            &nbsp;:&nbsp;
            <div class="input int2">{{exercises.weight}}</div>
            &nbsp;:&nbsp;
            <div class="input int2">{{exercises.minutes}}</div>
          </div>
        </div>
        <!-- </div> -->
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
import workoutService from "../services/WorkoutService";
// import userService from '@vue/composition-api'
// get the visitId from checkInButtonForUsers in order to put it in
export default {
  components: { ClassSchedule },
  name: "todays-workout",
  data() {
    return {
      exercisesForThatDay: [],
      exercise: {
        visitId: this.$store.state.visitId,
        // exerciseId: "",
        name: "",
        sets: "",
        reps: "",
        minutes: "",
      },
    }
  },
  computed:{
    
    
  },
   created(){
     this.getExercisesLoggedForVisit();
   },
  methods: {
    addCurrentExercise() {
      if (this.$store.state.visitId == ''){
        alert("please check in first")
      } else {
      this.exercise.visitId = this.$store.state.visitId;
      workoutService
        .addExercise(this.exercise)
        .then((response) => {
          this.getExercisesLoggedForVisit()
          if (response.status == 200) {
            alert("Your exercise has been logged")
          } 
            
          this.clearForm();
        });
      }
    },
    getExercisesLoggedForVisit(){
      workoutService
      .getExercisesLogged(this.$store.state.visitId)
      .then((response) =>{
        this.exercisesForThatDay = response.data;
      })
    },
    clearForm(){
      this.exercise = {
        name: "",
        sets: "",
        reps: "",
        minutes: "",

    }
    }
  },
};
</script>
<style scoped>
.int2 {
  width: 30%;
  margin: 10px;
}
.int3{
  width: 16%;
  margin-left: 10px;
  margin:10px;
  background-color:rgb(150, 248, 215);
  
  

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
  margin-left:10px;
}
.exDisplayed {
  background-color: darkcyan;
}

</style>
