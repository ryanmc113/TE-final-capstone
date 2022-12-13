<template>
  <div>
    <table>
      <thead>
        <tr>
          <th>Days in the gym</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="day in workoutDays" v-bind:key="day.visitId">
          <router-link :to="{ name: 'employee-view-user-workout', params: { userId: userId, visitId: day.visitId} }">
            {{ day.checkIn }}</router-link
          >
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import EmployeeService from "../services/EmployeeService.js";

export default {
  props: { userId: Number },
  data() {
    return {
      workoutDays: [],
    };
  },
  created() {
    this.getDaysAtGym();
  },
  methods: {
    getDaysAtGym() {
      EmployeeService.getVisitLog(this.userId).then((response) => {
        this.workoutDays = response.data;
      });
    },
  },
};
</script>
