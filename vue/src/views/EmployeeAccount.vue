<template>
  <div class="">
    <table id="tblUsers">
      <thead>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
        </tr>
      </thead>
      <tbody>
        <td>
          <!-- need to add v-model to bind data refer to event handling hw  -->
          <input
            type="text"
            id="firstNameFilter"
            v-bind-model="findUser.firstName"
          />
        </td>
        <td>
          <input type="text" id="lastNameFilter" v-bind="findUser.lastName" />
        </td>
        <!-- need to ad v-for to filter through list. look at userlist hw - event handling -->
        <tr>
          <td>{{}}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
// import userService from "../services/UserService";
export default {
  name: "employeeAccount",
  data() {
    return {
      filteredUsers: [],
      findUser: {
        firstName: "",
        lastName: "",
      },
    };
  },
//   methods: {
//     getUsers() {
//      this.filteredUsers userService.getUsers(
//         this.findUser.firstName,
//         this.findUser.lastName
//       );
//     },
//   },
};
</script>
