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
          <router-link :to="{ name: 'usersWorkoutsThatDay', params: { id: day.visitId} }">
            {{ day.checkIn }}</router-link
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
      workoutDays: [],
    };
  },
  created() {
    this.getDaysAtGym();
  },
  methods: {
    getDaysAtGym() {
      UserService.getVisitLog().then((response) => {
        this.workoutDays = response.data;
      });
    },
  },
};
</script>
