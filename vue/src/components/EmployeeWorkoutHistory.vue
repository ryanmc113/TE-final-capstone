<template>
  <div class="main">
    <table>
      <thead>
        <tr>
          <th> Days in the gym</th>
        </tr>
        <input type="month" value="2022-12" v-model="monthFilter">
      </thead>
      <tbody>
        <tr v-for="day in filterByMonth" v-bind:key="day.visitId">
          <router-link :to="{ name: 'employee-view-user-workout', params: { userId: userId, visitId: day.visitId} }">
            {{ day.month }} {{day.day}}</router-link
          >
        </tr>
      </tbody>
    </table>
    <br>
    <router-link :to='"/employee"'>
    <button class=" is-warning">Go back to Employee Page</button>
    </router-link>
  </div>
  
</template>

<script>
import EmployeeService from "../services/EmployeeService.js";

export default {
  props: { userId: Number },
  data() {
    return {
      monthFilter: '2022-12',
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
  },
  computed: {
    filterByMonth(){
      let filteredFullWorkoutDays = this.fullWorkoutDays;
      filteredFullWorkoutDays = filteredFullWorkoutDays.filter(fullDay =>
     
        fullDay.year + "-"+  this.getMonthNumber(fullDay.month) == this.monthFilter
      )
      return filteredFullWorkoutDays
    }
  },
  methods: {

      getDaysAtGym() {
      EmployeeService.getVisitLog(this.userId).then((response) => {
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
    },
    getMonthNumber(month){
      if (month == 'January'){
        month = '01'
      } else if (month == 'February'){
        month = '02'
    
      }if (month == 'March'){
        month = '03'
      }else if (month == 'April'){
        month = '04'
      }else if (month == 'May'){
        month = '05'
      }else if (month == 'June'){
        month = '06'
      }else if (month == 'July'){
        month = '07'
      }else if (month == 'August'){
        month = '08'
      }else if (month == 'September'){
        month = '09'
      }else if (month == 'October'){
        month = 10
      }else if (month == 'November'){
        month = 11
      }else if (month == 'December'){
        month = 12
      }
      return month
    
  },
}
};
</script>

<style scoped>

table{
  margin-left:50px;
}
main{
  margin-left:20px;
}
tr{
  margin-left:20px;
}
</style>
