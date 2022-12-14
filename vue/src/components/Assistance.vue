<template>
    <div class="scrollmenu">
  <div v-for="exercisesDisplayed in allExercisesArray" v-bind:key="exercisesDisplayed.id">
    <div>{{exercisesDisplayed.media_url}}</div>
    <div>{{exercisesDisplayed.name}}</div>
    <div>{{exercisesDisplayed.muscle}}</div>
    <div>{{exercisesDisplayed.machine}}</div>
  </div>

</div>
</template>

<script>
import assistanceExercises from "../services/AssistanceExercises"

export default {
    data() {
      return{
        allExercisesArray:[]
      }
        
    },
    create(){
      this.getAssistedExercisesSecond();
    },
    methods:{
      getAssistedExercisesSecond(){
        assistanceExercises
        .getAssistanceExercises
        .then((response) =>{
          if(response.status == 200){
            this.allExercisesArray = response.data;
          }
        })
      }
    }
}
</script>

<style scoped>
div.scrollmenu {
  background-color: rgb(192, 192, 192);
  overflow: auto;
  white-space: nowrap;
  border-radius: 15px;
}

div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px;
  text-decoration: none;
}

div.scrollmenu a:hover {
  background-color: #777;
}
</style>
