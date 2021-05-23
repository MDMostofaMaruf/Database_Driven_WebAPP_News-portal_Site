<?php

function dd($data){
    echo "<pre>";
    print_r($data);
    exit();
}

function includeView($file)
{
    require_once("./Views/includes/" . $file . ".php");
}

function flashSession($key)
{
    if(isset($_SESSION[$key])){
        $value  = $_SESSION[$key];
        unset($_SESSION[$key]);
        return $value;
    } else {
        return false;
    }
}

function destroySession($key)
{
    if(isset($_SESSION[$key])){
        unset($_SESSION[$key]);
    } else {
        return false;
    }
}

function hasSession($key){
    if(isset($_SESSION[$key])){
        return true;
    } else {
        return false;
    }
}

function setSession($key, $value)
{
    $_SESSION[$key] = $value;
}

function back()
{
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}

function auth()
{
    if(!hasSession('user_id')){
        redirect('/login');
    }
}

function guest()
{
    if(hasSession('user_id')){
        redirect('/dashboard/articles');
    }
}

function getSession($key){
    if(isset($_SESSION[$key])){
        return $_SESSION[$key];
    } else {
        return false;
    }
}

function userJournalist(){
    if(getSession('user_role') === 'journalist'){
        return true;
    } else {
        return false;
    }
}


function userEditor(){
    if(getSession('user_role') === 'editor'){
        return true;
    } else {
        return false;
    }
}

function directory_url(){
    echo "/news-portal/";
}



function directory(){
    return "/news-portal/";
}


function redirect($path){
    header('Location: ' . directory(). $path);
    exit;
}