<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::get('help', 'HelpController@index');
Route::get('search/{text}', 'HelpController@search');
Route::get('help/{help}', 'HelpController@show');
Route::post('help', 'HelpController@store');
Route::put('help/{help}', 'HelpController@update');
Route::delete('help/{help}', 'HelpController@delete');