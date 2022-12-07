<template>
  <div>
    <h1 class="is-size-2">Most Used Machines</h1>
    <table>
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
          machineUsers: "1000",
        },
        { machineName: "Arm Press", machineUsers: "1000" },
      ],
    };
  },

  methods: {
    getMachines() {
      employeeService.getMachineMetrics();
    },
  },
};
</script>

<style>
</style>