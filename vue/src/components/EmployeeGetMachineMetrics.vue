<template>
  <div>
    <h1 class="is-size-2" >Most Used Machines</h1>
    <table class="tile is-child notification is-warning">
      <thead>
        <tr>
          <th>Machine Name</th>
          &nbsp;
          <th>Amounts Used</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="machine in allMachines" v-bind:key="machine.machineName">
          <td>{{ machine.machineName }}</td>
          &nbsp;
          &nbsp;
          &nbsp;
          <td>{{ machine.machineUsers }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import employeeService from "../services/EmployeeService";
export default {
  name: "EmployeeAccount",
  data() {
    return {
      allMachines: [
        {
          machineName: "Leg Press",
          machineUsers: "240",
        },
        { 
          machineName: "Arm Press", 
          machineUsers: "213" 
          },
          { 
          machineName: "Shoulder Press Machine", 
          machineUsers: "198" 
          },
          { 
          machineName: "Dip Machine", 
          machineUsers: "173" 
          },
          { 
          machineName: "Leg Extension Machine", 
          machineUsers: "170" 
          },
      ],
    };
  },

  methods: {
    getMachines() {
      employeeService.getMachineMetrics().then((response) => {
        this.allMachines = response.data;
      });
    },
  },
};
</script>

<style>
</style>