import { createRouter, createWebHistory } from 'vue-router'
const routerHistory = createWebHistory()
const router = createRouter({
    history: routerHistory,
    routes: [
        {
            path: '/profile',
            name: 'profile',
            component: () => import("../views/Profile.vue"),
        },
        {
            path: '/about',
            name: 'about',
            component: () => import("../views/About.vue"),
        },
        {
            path: '/:pathMatch(.*)',
            name: 'not-found',
            component: () => import("../views/NotFound.vue"),
        },
    ]
})
export default router