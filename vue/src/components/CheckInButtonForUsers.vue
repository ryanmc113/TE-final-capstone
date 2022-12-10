<template>
  <div>
    <button class="button is-link btn-first" v-on:click="addCheckInTime">Check In</button>
  </div>
</template>




<script>
import workoutService from "../services/WorkoutService";
export default {
  name:"check-in",
  props:["userId"
  ],
  data(){
    return{
      user:{
        checkInTime:"" /*this needs to be time*/
      },
    }
  },
  methods: {
    /* use this method on a v-on:click=""*/
    addCheckInTime() {
      const checkInTime = 
      { id: this.userId,//this needs to grab id from the parent = view
      checkInTime: this.getTime()
      };
    workoutService
    .addCheckInTime(checkInTime.id, checkInTime)
    .then(response =>{
      if(response.status === 200){
        //don't know what to return or set after 200 comes back.
      }
    })
    .catch((error)=>{
      if(error.response){
        this.errorMsg = "Please see the person at the front desk"
      }
    })
    },
     getTime() {
      var today = new Date();
      var date =
        today.getFullYear() +
        "-" +
        (today.getMonth() + 1) +
        "-" +
        today.getDate();
      var time =
        today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
      var dateTime = date + " " + time;
      return dateTime;
    },
  },
};
</script>


<style scoped>
.btn-first {
  background-color: #58d9eb !important;
  border: 2px solid #317680 !important;
}
</style>