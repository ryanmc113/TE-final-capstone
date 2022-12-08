<template>
  <div class="main">
   <employee-get-users/>
   <employee-get-machine-metrics/>
   <br><br><br><br><br>
  </div>
</template>

<script>
import EmployeeGetUsers from "../components/EmployeeGetUsers.vue";
import EmployeeGetMachineMetrics from "../components/EmployeeGetMachineMetrics.vue"
export default {
 components:{
     EmployeeGetUsers,
     EmployeeGetMachineMetrics
 }
};
</script>
<style scoped>
.main{
  display: flex;
  align-items:center;
  justify-content: space-around;
}
</style>

