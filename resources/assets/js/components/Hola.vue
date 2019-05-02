<template>
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <h1>Hola, {{ name }}!</h1>
            <div class="row form-group">
                <input class="form-control" type="text" v-model="name">
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="col-md-6 offset-md-3">
            <h3 class="text-center">Stop and visit our modular friends!</h3>
            <h4 class="text-center"><a href="/mama-bear">Mama Bear</a></h4>
            <h4 class="text-center"><a href="/papa-bear">Papa Bear</a></h4>
            <h4 class="text-center"><a href="/baby-bear">Baby Bear</a></h4>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                name: 'Goldilocks'
            };
        }
    };
</script>

<style>
    h1 {
        color: green;
    }
</style>