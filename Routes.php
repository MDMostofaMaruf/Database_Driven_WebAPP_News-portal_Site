<?php

Route::set("", function(){
    HomeController::index();
});

Route::set("articles", function(){
    HomeController::ShowArticles();
});

Route::set("article", function(){
    HomeController::ShowArticle();
});

Route::set("store-comment", function(){
    CommentController::store();
});

Route::set("dashboard/comments", function(){
    CommentController::index();
});

Route::set("status-article", function(){
    CommentController::statusChange();
});





Route::set("login", function(){
    LoginController::ViewLogin();
});

Route::set("login-post", function(){
    LoginController::PostLogin();
});

Route::set("dashboard/articles", function(){
    ArticleController::CreateArticle();
});

Route::set("store-article", function(){
    ArticleController::StoreArticle();
});

Route::set("delete-article", function(){
    ArticleController::DeleteArticle();
});

Route::set("update-article", function(){
    ArticleController::UpdateArticle();
});


Route::set("post-update-article", function(){
    ArticleController::UpdatePostArticle();
});

Route::set("dashboard/users", function(){
    UserController::index();
});

Route::set("dashboard/logout", function(){
    UserController::logout();
});

Route::set("status-article", function(){
    ArticleController::statusChange();
});




Route::set("store-user", function(){
    UserController::store();
});

Route::set("delete-user", function(){
    UserController::delete();
});



?>