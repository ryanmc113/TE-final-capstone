<template>
  <div>
    <button
      class="button is-link btn-first"
      type="submit"
      v-on:click="addCheckInTimeFirst()"
      v-show="this.$store.state.visitId == '' " 
    >
      Check In
    </button>
    <button class ="button is-link btn-first"
    type = "submit"
    v-on:click ="updateCheckoutTimeSecond()" 
    v-show="this.$store.state.visitId != '' ">Check Out</button>
  </div>
</template>




<script>
import workoutService from "../services/WorkoutService";
export default {
  name: "check-in",
  // props:["userId"],
  data() {
    return {
      user: {
        visitId: "",
        checkInTime: "" /*this needs to be time*/,
      },
    };
  },
  methods: {
    /* use this method on a v-on:click=""*/
    addCheckInTimeFirst() {
      const newCheckInTime = {
        userId: this.$store.state.user.id, //this needs to grab id from the parent = view
        checkInTime: this.getTime(),
      };
      workoutService
        .addCheckInTime(newCheckInTime)
        .then((response) => {
          if (response.status === 200) {
            this.$store.commit("SET_VISIT_ID", response.data)
            // this.$router.push({ new: "Home" });
          }
        })
        .catch((error) => {
          if (error.response) {
            this.errorMsg = "Please see the person at the front desk";
          }
        });
    },
    updateCheckoutTimeSecond() {
      const checkOutTime = { 
        userId: this.$store.state.user.id, 
      checkOutTime: this.getTime() 
      };
      workoutService
        .updateCheckOut(checkOutTime)
        .then((response) => {
          if (response.status === 200) {
            // this.$router.push({ new: "Home" });
            this.$store.commit("DELETE_VISIT_ID")
          }
        })
        .catch((error) => {
          if (error.response) {
            this.errorMsg = "Please see the person at the front desk";
          }
        });
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
    resetVisitId(){
      this.user.visitId = "";
    }
  },
};
</script>


<style scoped>
.btn-first {
  background-color: #58d9eb !important;
  border: 2px solid #317680 !important;
}
</style>