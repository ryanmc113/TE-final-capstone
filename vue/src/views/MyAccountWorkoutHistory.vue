<template>
    <div>
        &nbsp; &nbsp; My History
        <workout-history :visitId="parseInt($route.params.id)"/>
    </div>
</template>

<script>
import WorkoutHistory from '../components/WorkoutHistory.vue';
export default {
components:{
    WorkoutHistory,
    
}
        
    
}
</script>

<style scoped>
div{
    margin-left:10px;
}
</style>
