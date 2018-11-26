import Vue from 'vue/dist/vue.esm'
import Vuesax from 'vuesax'
Vue.use(Vuesax)

new Vue({
  el: '#header',
  data:()=>({
    activeItem: 0,
    search: ''
  })
})
