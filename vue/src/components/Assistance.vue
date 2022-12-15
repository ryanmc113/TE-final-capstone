<template>
  <div class="scrollmenu">
    <div
      v-for="exercisesDisplayed in allExercisesArray"
      v-bind:key="exercisesDisplayed.id"
      class="box2"
    >
      <img class="gym-pic content" :src="exercisesDisplayed.mediaUrl" alt="No Image" />
      <!-- <div>{{exercisesDisplayed.mediaUrl}}</div> -->
      <div>{{ exercisesDisplayed.name }}</div>
      <div>{{ exercisesDisplayed.muscle }}</div>
    </div>
  </div>
</template>

<script>
import assistanceExercises from "../services/AssistanceExercises";

export default {
  data() {
    return {
      allExercisesArray: [],
    };
  },
  created() {
    this.getAssistedExercisesSecond();
  },
  methods: {
    getAssistedExercisesSecond() {
      assistanceExercises.getAssistanceExercises().then((response) => {
        if (response.status == 200) {
          this.allExercisesArray = response.data;
        }
      });
    },
  },
};
</script>

<style scoped>
div.scrollmenu {
  /* background-color: rgb(192, 192, 192); */
  /* overflow-x: scroll; */
  /* white-space: nowrap; */
  /* border-radius: 15px; */
  /* overflow-x: scroll;
  overflow-y: hidden;
  white-space: nowrap; */
  /* overflow-x: auto;
  overflow-y: hidden;
  white-space: nowrap;  */
  /* flex: 1 !important; */
  /* display: flex !important; */
  overflow: auto !important;
  white-space: nowrap;
  /* overflow-y: scroll !important; */
}
.box2 {
    /* display: flex !important; */
    min-height: min-content !important;
    display: inline-block;
    margin-left: 10px;
}

.gym-pic{
  height: 200px;
  max-width: 100%
}

/* div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px;
  text-decoration: none;
} */

div.scrollmenu a:hover {
  /* background-color: #777; */
}
</style>
