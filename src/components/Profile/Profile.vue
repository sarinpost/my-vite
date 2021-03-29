<template>
  <div class="container px-2">
    <!-- This example requires Tailwind CSS v2.0+ -->
    <nav class="bg-gray-800">
      <div class="max-w-7xl mx-auto px-2 sm:px-6 lg:px-8">
        <div class="relative flex items-center justify-between h-16">
          <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
            <!-- Mobile menu button-->
            <button
              type="button"
              class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white"
              aria-controls="mobile-menu"
              aria-expanded="false"
            >
              <span class="sr-only">Open main menu</span>
              <!-- Icon when menu is closed. -->
              <!--
            Heroicon name: outline/menu

            Menu open: "hidden", Menu closed: "block"
          -->
              <svg
                class="block h-6 w-6"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
                aria-hidden="true"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M4 6h16M4 12h16M4 18h16"
                />
              </svg>
              <!-- Icon when menu is open. -->
              <!--
            Heroicon name: outline/x

            Menu open: "block", Menu closed: "hidden"
          -->
              <svg
                class="hidden h-6 w-6"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
                aria-hidden="true"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M6 18L18 6M6 6l12 12"
                />
              </svg>
            </button>
          </div>
          <div
            class="flex-1 flex items-center justify-center sm:items-stretch sm:justify-start"
          >
            <div class="flex-shrink-0 flex items-center">
              <img
                class="block lg:hidden h-8 w-auto"
                src="https://tailwindui.com/img/logos/workflow-mark-indigo-500.svg"
                alt="Workflow"
              />
              <img
                class="hidden lg:block h-8 w-auto"
                src="https://tailwindui.com/img/logos/workflow-logo-indigo-500-mark-white-text.svg"
                alt="Workflow"
              />
            </div>
            <div class="hidden sm:block sm:ml-6">
              <div class="flex space-x-4">
                <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                <a
                  @click="onClick('dashboard')"
                  :class="
                    menuActive == 'dashboard' ? 'menu-active' : 'menu-inactive'
                  "
                  >Dashboard</a
                >
                <a
                  @click="onClick('team')"
                  :class="
                    menuActive == 'team' ? 'menu-active' : 'menu-inactive'
                  "
                  >Team</a
                >
                <a
                  @click="onClick('projects')"
                  :class="
                    menuActive == 'projects' ? 'menu-active' : 'menu-inactive'
                  "
                  >Projects</a
                >
                <a
                  @click="onClick('calendar')"
                  :class="
                    menuActive == 'calendar' ? 'menu-active' : 'menu-inactive'
                  "
                  >Calendar</a
                >
              </div>
            </div>
          </div>
          <div
            class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0"
          >
            <button
              class="bg-gray-800 p-1 rounded-full text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white"
            >
              <span class="sr-only">View notifications</span>
              <!-- Heroicon name: outline/bell -->
              <svg
                class="h-6 w-6"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
                aria-hidden="true"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"
                />
              </svg>
            </button>

            <!-- Profile dropdown -->
            <div class="ml-3 relative">
              <div>
                <button
                  class="bg-gray-800 flex text-sm rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white"
                  id="user-menu"
                  aria-haspopup="true"
                >
                  <span class="sr-only">Open user menu</span>
                  <img
                    class="h-8 w-8 rounded-full"
                    src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                    alt=""
                  />
                </button>
              </div>
              <!--
            Profile dropdown panel, show/hide based on dropdown state.

            Entering: "transition ease-out duration-100"
              From: "transform opacity-0 scale-95"
              To: "transform opacity-100 scale-100"
            Leaving: "transition ease-in duration-75"
              From: "transform opacity-100 scale-100"
              To: "transform opacity-0 scale-95"
          -->
              <div
                class="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg py-1 bg-white ring-1 ring-black ring-opacity-5"
                role="menu"
                aria-orientation="vertical"
                aria-labelledby="user-menu"
              >
                <a
                  href="#"
                  class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                  role="menuitem"
                  >Your Profile</a
                >
                <a
                  href="#"
                  class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                  role="menuitem"
                  >Settings</a
                >
                <a
                  href="#"
                  class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                  role="menuitem"
                  >Sign out</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Mobile menu, show/hide based on menu state. -->
      <div class="sm:hidden" id="mobile-menu">
        <div class="px-2 pt-2 pb-3 space-y-1">
          <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
          <a
            @click="onClick('dashboard')"
            :class="
              menuActive == 'dashboard'
                ? 'menu-mobile-active'
                : 'menu-mobile-inactive'
            "
            >Dashboard</a
          >
          <a
            @click="onClick('team')"
            :class="
              menuActive == 'team'
                ? 'menu-mobile-active'
                : 'menu-mobile-inactive'
            "
            >Team</a
          >
          <a
            @click="onClick('projects')"
            :class="
              menuActive == 'projects'
                ? 'menu-mobile-active'
                : 'menu-mobile-inactive'
            "
            >Projects</a
          >
          <a
            @click="onClick('calendar')"
            :class="
              menuActive == 'calendar'
                ? 'menu-mobile-active'
                : 'menu-mobile-inactive'
            "
            >Calendar</a
          >
        </div>
      </div>
    </nav>

    {{ menuActive }}

    <div
      class="p-6 max-w-sm mx-auto bg-white rounded-xl shadow-md flex items-center space-x-4"
    >
      <div>
        <div class="text-xl font-medium text-black">ChitChat</div>
        <p class="text-gray-500">You have a new message!</p>
      </div>
    </div>

    <button
      class="px-4 py-1 text-sm text-purple-600 font-semibold rounded-full border border-purple-200 hover:text-white hover:bg-purple-600 hover:border-transparent focus:outline-none focus:ring-2 focus:ring-purple-600 focus:ring-offset-2"
    >
      Message
    </button>

    <button class="btn-indigo">Click me</button>

    <PrimaryButton>Click me</PrimaryButton>

    <div
      class="max-w-md mx-auto bg-white rounded-xl shadow-md overflow-hidden md:max-w-2xl"
    >
      <div class="md:flex">
        <div class="md:flex-shrink-0"></div>
        <div class="p-8">
          <div
            class="uppercase tracking-wide text-sm text-indigo-500 font-semibold"
          >
            Case study
          </div>
          <a
            href="#"
            class="block mt-1 text-lg leading-tight font-medium text-black hover:underline"
            >Finding customers for your new business</a
          >
          <p class="mt-2 text-gray-500">
            Getting a new business off the ground is a lot of hard work. Here
            are five ideas you can use to find your first customers.
          </p>
        </div>
      </div>
    </div>

    input
    <input
      class="bg-white rounded-md shadow-md border border-transparent focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent ..."
    /><br />

    hover group condition
    <div
      class="group border-indigo-500 hover:bg-white hover:shadow-lg hover:border-transparent"
    >
      <p class="text-indigo-600 group-hover:text-gray-900">New Project</p>
      <p class="text-indigo-500 group-hover:text-gray-500">
        Create a new project from a variety of starting templates.
      </p>
    </div>

    <button
      class="transform transition duration-500 hover:scale-110 motion-reduce:transform-none bg-blue-500 text-white"
    >
      Hover me
    </button>

    <button
      class="bg-red-500 p-1 rounded-md text-white disabled:opacity-50"
      disabled
    >
      Submit
    </button>

    <label class="flex justify-start items-start m-2">
      <div
        class="bg-gray-200 rounded-md w-8 h-8 flex flex-shrink-0 justify-center items-center mr-2 focus-within:border-blue-500"
      >
        <input type="checkbox" class="opacity-0 absolute" />
        <svg
          class="fill-current hidden w-5 h-5 text-red-500 pointer-events-none"
          viewBox="0 0 20 20"
        >
          <path d="M0 11l2-2 5 5L18 3l2 2L7 18z" />
        </svg>
      </div>
      <div class="select-none">Label Text</div>
    </label>

    <label class="flex justify-start items-start m-2">
      <div
        class="bg-white border-2 rounded border-gray-400 w-8 h-8 flex flex-shrink-0 justify-center items-center mr-2 focus-within:border-blue-500"
      >
        <input type="checkbox" class="opacity-0 absolute" />
        <svg
          class="fill-current hidden w-5 h-5 text-green-500 pointer-events-none"
          viewBox="0 0 20 20"
        >
          <path d="M0 11l2-2 5 5L18 3l2 2L7 18z" />
        </svg>
      </div>
      <div class="select-none">Label Text</div>
    </label>

    <label class="inline-flex items-center m-2">
      <input
        type="checkbox"
        class="text-4xl form-checkbox text-pink-600 bg-gray-200"
        checked
      />
      <span class="text-4xl ml-2">Option 3 สวัสดีครับ</span>
    </label>

    <button class="bg-blue-400 px-2 py-2 text-bold text-white rounded hover">
      test
    </button>

    <button class="btn btn-blue">Find group</button>

    <div class="container bg-red-100 p-2">
      <div class="md:flex">
        <div class="flex-1 bg-gray-300 m-1 p-1">asd</div>
        <div class="flex-1 bg-gray-300 m-1 p-1">asd</div>
      </div>
    </div>
  </div>
</template>
<script>
import { useRouter, useRoute } from "vue-router";
import PrimaryButton from "./../Button/PrimaryButton.vue";
import { onMounted, ref } from "vue";
export default {
  components: {
    PrimaryButton,
  },
  setup(props) {
    /** router */
    const router = useRouter();
    const route = useRoute();
    console.log(route);
    console.log(router);

    /** states */
    const menuActive = ref(sessionStorage.getItem("menuActive") || "dashboard");

    /** mounted */
    onMounted(() => {
      sessionStorage.setItem("menuActive", menuActive.value);
    });

    /** method */
    const onClick = (value) => {
      menuActive.value = value;
      sessionStorage.setItem("menuActive", menuActive.value);
    };

    /** return states */
    return {
      menuActive,
      onClick,
    };
  },
};
</script>
<style scoped lang="postcss">
.btn-indigo {
  @apply py-2 px-4 bg-indigo-500 text-white font-semibold rounded-lg shadow-md hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:ring-opacity-75;
}
input:checked + svg {
  display: block;
}
.menu-active {
  @apply bg-gray-900 text-white px-3 py-2 rounded-md text-sm font-medium cursor-pointer;
}
.menu-inactive {
  @apply text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium cursor-pointer;
}
.menu-mobile-active {
  @apply bg-gray-900 text-white block px-3 py-2 rounded-md text-base font-medium;
}
.menu-mobile-inactive {
  @apply text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium;
}
</style>