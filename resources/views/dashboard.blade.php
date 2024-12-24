<x-app-layout>
<x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        {{ __('Selamat Datang , ') }} {{ Auth::user()->name}}
    </h2>
</x-slot>


    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <!-- Additional Section for Overview or Stats -->
            <div class="mt-8 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
                <!-- Card 1 -->
                <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                    <h3 class="text-xl font-semibold text-gray-700">Projects</h3>
                    <p class="mt-2 text-2xl font-bold text-gray-900">78</p>
                </div>
                
                </div>
                <!-- Card 2 -->
                <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                    <h3 class="text-xl font-semibold text-gray-700">Projects</h3>
                    <p class="mt-2 text-2xl font-bold text-gray-900">78</p>
                </div>
                <!-- Card 3 -->
                <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                    <h3 class="text-xl font-semibold text-gray-700">Messages</h3>
                    <p class="mt-2 text-2xl font-bold text-gray-900">34</p>
                </div>
            </div>
        </div>
    </div>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <!-- Additional Section for Overview or Stats -->
            <div class="mt-0 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
                <!-- Card 1 -->
                <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                    <h3 class="text-xl font-semibold text-gray-700">Total Users</h3>
                    <p class="mt-2 text-2xl font-bold text-gray-900">1,250</p>
                </div>
                <!-- Card 2 -->
                <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                    <h3 class="text-xl font-semibold text-gray-700">Projects</h3>
                    <p class="mt-2 text-2xl font-bold text-gray-900">78</p>
                </div>
                <!-- Card 3 -->
                <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                    <h3 class="text-xl font-semibold text-gray-700">Messages</h3>
                    <p class="mt-2 text-2xl font-bold text-gray-900">34</p>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
