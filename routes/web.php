<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect()->route('home');
});

Route::group(['prefix' => LaravelLocalization::setLocale(), 'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]], function()
{

    Route::group(['prefix' => 'admin'] , function () {
        Auth::routes();

    });

    Route::group(['namespace' => 'Admin', 'prefix' => 'admin'] , function () {

    Route::group(['middleware' => ['role:admin|moderator','auth']],function(){
        Route::get('dashboard', 'DashboardController@index')->name('home');
        Route::resource('/product','productController');
        Route::resource('/recommendation','recommendationController');
        Route::resource('/academy','AcademyController');
        Route::resource('/level','levelController');

        Route::get('/OrderedRecommendations','recommendationController@getOrderRecommendation')->name('getOrder.recommendations');
        Route::delete('/OrderedRecommendations/{id}','recommendationController@destroyOrderRecommendation')->name('deleteOrder.recommendations');

    });

    Route::group(['middleware' => ['role:admin|moderator','auth']],function(){
        Route::resource('/maincategories','MainCategoryController');
        Route::resource('/resturants','ResturantController');
        Route::resource('/package','packageController');
        Route::get('bookedPackages','packageController@bookedPackages')->name('booked.packages');
        Route::get('bookedPackage/{id}','packageController@showBooking')->name('booked.package.details');
        Route::put('bookedPackage/{id}','packageController@updateBookingStatus')->name('updateBookingStatus');
        Route::resource('/banner','bannerController')->except(['create', 'show', 'destroy']);
        Route::resource('/slider','SliderController')->except(['create', 'show', 'destroy']);
        Route::resource('/branch','BranchController');
        Route::resource('/discount','DiscountController');
        Route::get('catProduct/{id}','DiscountController@getCategoryProduct');
        // Route::get('createCopon/{id}','productController@createCopon')->name('copon.create');
        Route::get('createCopon','productController@createCopon')->name('copon.create');
        Route::post('storeCopon','productController@storeCopon')->name('copon.store');
        Route::get('copons','productController@allCopons')->name('copons.index');
        Route::delete('deleteCopon/{id}','productController@destroyCopon')->name('copon.destroy');
// table_reservations
        Route::resource('TableReservations','TableReservationController');
        Route::put('confirmBooking','TableReservationController@confirmBooking')->name('booking.confirmation');
// regions for delivery
    Route::resource('region','RegionsController');


    });
    Route::group(['middleware' => ['role:admin','auth']],function(){
        Route::resource('/user','UsersController');
        // Route::put('/updateUser/{id}','UsersController@update')->name('userupdate');

        /* Site Settings Routes */
        Route::get('site_settings', 'SiteSettingController@generalShow')->name('settings.site.show');
        Route::put('site_settings', 'SiteSettingController@generalUpdate')->name('settings.site.update');

        Route::get('social_settings', 'SiteSettingController@socialShow')->name('settings.social.show');
        Route::put('social_settings', 'SiteSettingController@socialUpdate')->name('settings.social.update');

        Route::get('/userAddRole','UsersController@addRole');
        Route::put('/userEditRole','UsersController@editUserRole')->name('user.role.edit');


    });


    Route::get('/vo','productController@createvo');

    });

    Route::get('/autoAssignOrder','Admin\OrdersController@autoAssignOrder');

});
Route::get('login/{provider}', '\App\Http\Controllers\Auth\LoginController@redirectToProvider')->name('social.login');
Route::get('login/{provider}/callback', '\App\Http\Controllers\Auth\LoginController@handleProviderCallback');
// Auth::routes();

 Route::get('/map', function(){
     return view('map');
 });
