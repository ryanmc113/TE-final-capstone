<template>
  <div>
Month year
    <table>
      <thead>
        <tr>
          <th>Days in the gym</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="day in fullWorkoutDays" v-bind:key="day.visitId">
          <router-link
            :to="{ name: 'usersWorkoutsThatDay', params: { id: day.visitId } }"
          >
          <div class="theMonth"> <div> {{day.month}}</div> &nbsp; <div>{{ day.day }}</div></div></router-link
          >
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import UserService from "../services/UserService.js";

export default {
  data() {
    return {
      year:[2022],
      months:['January', 'February','March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
      currentMonth: '',
      fullWorkoutDays: [],
      makingADay: {
        visitId: '',
        year: '',
        month: '',
        day: '',
      },
    };
  },
  created() {
    this.getDaysAtGym();
    // this.getDate();
  },
  methods: {
    getDaysAtGym() {
      UserService.getVisitLog().then((response) => {
         response.data.forEach((workout) => {
          this.makingADay.visitId = workout.visitId;
          this.makingADay.year = workout.checkIn.substring(0, 4);
          let thisMonth = workout.checkIn.substring(5, 7);
          this.makingADay.month = this.getMonthName(thisMonth)
          this.makingADay.day = workout.checkIn.substring(8, 10);
          this.fullWorkoutDays.push(this.makingADay);
          this.makingADay = {
            visitId: '',
            year: '',
            month: '',
            day: '',
          };
        });
      });
    },
    getMonthName(month){
if (month == 1){
  month = 'January'
} else if (month == 2){
  month = 'February'
}else if (month == 3){
  month = 'March'
}else if (month == 4){
 return month = 'April'
}else if (month == 5){
  month = 'May'
}else if (month == 6){
  month = 'June'
}else if (month == 7){
  month = 'July'
}else if (month == 8){
  month = 'August'
}else if (month == 9){
  month = 'September'
}else if (month == 10){
  month = 'October'
}else if (month == 11){
  month = 'November'
}else if (month == 12){
  month = 'December'
} return month
    }
    
  },
};
</script>

<style scoped>
.theMonth{
  display: flex;

}
</style>
