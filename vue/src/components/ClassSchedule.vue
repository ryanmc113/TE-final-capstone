<template>
  <div class="field">
    <div class="tile">
      <div class="input int2">Day</div>
      &nbsp;&nbsp;
      <div class="input int2">Instructor</div>
      &nbsp;&nbsp;
      <div class="input int2">Time</div>
      &nbsp;&nbsp;
      <div class="input int2">Name</div>
    </div>
    &nbsp;&nbsp;
    <div class ="tile" v-for="classes in allClasses" v-bind:key="classes.id">
       <div class="input int2 classSch">{{classes.classDay}}</div>
      &nbsp;&nbsp;
      <div class="input int2 classSch">{{classes.classInstructor}}</div>
      &nbsp;&nbsp;
      <div class="input int2 classSch">{{classes.classTime}}</div>
      &nbsp;&nbsp;
      <div class="input int2 classSch">{{classes.Name}}</div>
     
    </div>
    <div class = "tile">

    </div>
  </div>
</template>

<script>
import workoutService from '../services/WorkoutService'

export default {
  data() {
    return{
      allClasses:[]
    }
  },
  created(){
    this.getClassSch();
  },
  methods:{
    getClassSch(){
      workoutService
      .getClassSch()
      .then((response) =>{
        this.allClasses = response.data;
      })
    }
  }
}
</script>

<style>
.classSch{
  background-color: rgb(177, 231, 231) !important;
}
</style>
