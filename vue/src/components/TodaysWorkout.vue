<template>
  <div class="tile">
    <div class="tile is-parent is-vertical">
      <article class="tile is-child notification is-primary">
        <p class="title">Workout for the Day</p>
        <!-- <p class="subtitle">Top tile</p> -->
        <div class="field">
          <label class="label">Exercise</label>
          <div class="control">
            <input
              class="input"
              type="text"
              placeholder="Name of Machine/Exercise"
            />
          </div>
          <div class="field">
            <label class="label">Exercise Data</label>
            <!-- <label class ="label" for="reps">Reps</label>
            <label class="label" for="weight">Metric</label> -->
            <div class="control display">
              <input
                class="input int2"
                type="text"
                placeholder="Sets"
              />&nbsp;X&nbsp;
              <input
                class="input int2"
                type="text"
                placeholder="Reps"
              />&nbsp;:&nbsp;
              <input class="input int2" type="text" placeholder="weight/time" />
            </div>
          </div>
          <button class="button is-link btn-first">Add</button>
        </div>
      </article>
    </div>
    <div class="tile is-parent">
      <article class="tile is-child notification is-info">
        <class-schedule />
      </article>
    </div>
  </div>
</template>

<script>
import ClassSchedule from "../components/ClassSchedule.vue";
// import userService from '@vue/composition-api'
export default {
  components: { ClassSchedule },
  name: "todays-workout",
  
};
</script>
<style scoped>
.int2 {
  width: 30%;
}
.display {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.btn-first {
  background-color: #58d9eb !important;
  border: 2px solid #317680 !important;
  display: flex;
}
</style>
