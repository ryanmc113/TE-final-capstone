<template>
  <div>
    <h2 class="is-size-5" >Top 10 Most Used Machines This Month</h2>
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
          machineName: "Bicep Curl Machine",
          machineUsers: "323"
          },
        {
          machineName: "Leg Press",
          machineUsers: "240",
        },
        {
          machineName: "Treadmill",
          machineUsers: "220"
          },
        { 
          machineName: "Chest Press", 
          machineUsers: "213" 
          },
          { 
          machineName: "Shoulder Press Machine", 
          machineUsers: "198" 
          },
          { 
          machineName: "Cable Row", 
          machineUsers: "173" 
          },
          { 
          machineName: "Leg Extension Machine", 
          machineUsers: "170" 
          },
          {
            machineName: "Elliptical",
            machineUsers: "163"
          },
          {
          machineName: "Ski ERG",
          machineUsers: "90"
          },
          {
            machineName: "Back Extension",
            machineUsers: "32"
          }
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