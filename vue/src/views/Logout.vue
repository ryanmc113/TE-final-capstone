<template>
  <h1>Logout</h1>
</template>

<script>
import workoutService from "../services/WorkoutService";
export default {
  
  created() {   
     this.updateCheckoutTimeSecond();
    this.$store.commit("LOGOUT");
    this.$store.commit("DELETE_VISITOR")
    this.$router.push("/login");
  },
  methods: {
    updateCheckoutTimeSecond() {
      if (this.$store.state.visitId !=""){
      const checkOutTime = { 
        userId: this.$store.state.user.id, 
      checkOutTime: this.getTime() 
      };
      workoutService
        .updateCheckOut(checkOutTime)
        .then((response) => {
          if (response.status === 200) {
                 this.$store.commit("DELETE_VISIT_ID")
            // this.$router.push({ new: "Home" });
           
          }
        })
        .catch((error) => {
          if (error.response) {
            this.errorMsg = "Please see the person at the front desk";
          }
        });
      }
  },getTime() {
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
  }
};
</script>
