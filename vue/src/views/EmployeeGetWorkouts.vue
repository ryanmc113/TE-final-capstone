<template>
    <div>

<employee-get-workouts :visitId="parseInt($route.params.visitId)"/>
    </div>
</template>

<script>
import  EmployeeGetWorkouts from '../components/EmployeeGetWorkouts.vue'
export default {
name: "Workouts",
   components: {
       EmployeeGetWorkouts,
       
   }
}
</script>
