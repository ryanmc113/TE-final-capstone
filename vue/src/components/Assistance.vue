<template>
<div>
    <div v-for="assistance in assistanceExercisesArray" v-bind:key="assistance.id" class="scrollmenu">
      <div>{{assistance.name}}</div>
  </div>
</div>
</template>

<script>
import assistanceExercises from "../services/AssistanceExercises";

export default {
  data() {
    return {
      assistanceExercisesArray: [],
    };
  },
  created() {
    this.getAssistanceExercisesFromBack();
  },
  methods: {
    getAssistanceExercisesFromBack() {
      assistanceExercises.getAssistanceExercises().then((response) => {
        this.assistanceExercisesArray = response.data;
      });
    },
  },
};
</script>

<style scoped>
div.scrollmenu {
  background-color: rgb(192, 192, 192);
  overflow-y: hidden;
  overflow-x: scroll;
  white-space: nowrap;
  border-radius: 15px;
  width: auto;
}

div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px;
  text-decoration: none;
}

div.scrollmenu a:hover {
  background-color: #777;
}
</style>
