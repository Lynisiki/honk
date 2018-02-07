<?php


interface HookDao
{
    public function login();
	public function sqlcommands($sqlq,$number);
	public function addbookmark();
	public function getBookMark();
	public function register();
	public function index();
	public function deletebookmark();
	public function getTrafficFeed();
}


?>