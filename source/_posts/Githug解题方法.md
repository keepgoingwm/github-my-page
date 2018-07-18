---
title: Githug解题方法
author: wm
tags:
  - Git
categories:
  - 开发工具
  - 代码管理-Git
abbrlink: 32632
date: 2018-07-18 10:52:00
---
Githug是一个git练习游戏
https://segmentfault.com/a/1190000004222489
https://github.com/Gazler/githug
 
## 通用操作
 
首先，设置一个自己习惯的编辑器
 
```
git config --global core.editor vim
```
其次，如果需要的话，配置一些别名，会方便些
```
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.rt remote
```
 
## 攻略
 
> 基于v0.5.0
 
>********************************************************************************
>*                                    Githug                                    *
>********************************************************************************
>No githug directory found, do you wish to create one? [yn]  y
>Welcome to Githug!
 
* 1
 
> Name: init
> Level: 1
> Difficulty: *

A new directory, `git_hug`, has been created; initialize an empty repository in it.
 
```
git init
```
 
* 2
 
> Name: config
> Level: 2
> Difficulty: *

Set up your git name and email, this is important so that your commits can be identified.
 
```
git config --global user.name "Your Name"
git config --global user.email "Your Email"
```
 
* 3
 
> Name: add
Level: 3
Difficulty: *
 
There is a file in your folder called `README`, you should add it to your staging area
Note: You start each level with a new repo. Don't look for files from the previous one.
 
```
git add README
```
 
* 4
 
 
> Name: commit
Level: 4
Difficulty: *
 
The `README` file has been added to your staging area, now commit it.
 
```shell
git commit -am "README"
```
 
* 5
 
> Name: clone
Level: 5
Difficulty: *
 
Clone the repository at https://github.com/Gazler/cloneme.
 
```shell
git clone https://github.com/Gazler/cloneme
```
 
* 6
 
> Name: clone_to_folder
Level: 6
Difficulty: *
 
Clone the repository at https://github.com/Gazler/cloneme to `my_cloned_repo`.
 
```
git clone https://github.com/Gazler/cloneme my_cloned_repo
```
 
* 7
 
> Name: ignore
Level: 7
Difficulty: **
 
The text editor 'vim' creates files ending in `.swp` (swap files) for all files that are currently open.  We don't want them creeping into the repository.  Make this repository ignore `.swp` files.
 
```
vi .gitignore
```
在最后插入`*.swp`
 
* 8
 
> Name: include
Level: 8
Difficulty: **
 
Notice a few files with the '.a' extension.  We want git to ignore all but the 'lib.a' file.
 
```
vi .gitignore
```
在最后插入
```
*.a
!lib.a
```
 
* 9
 
> Name: status
Level: 9
Difficulty: *
 
There are some files in this repository, one of the files is untracked, which file is it?
 
```
githug
database.yml
```
 
* 10
 
> Name: number_of_files_committed
> Level: 10
> Difficulty: *
 
There are some files in this repository, how many of the files will be committed?
 
```
githug
2
```
 
* 11

> Name: rm
Level: 11
Difficulty: **
 
A file has been removed from the working tree, however the file was not removed from the repository.  Find out what this file was and remove it.
 
```
git rm deleteme.rb
git commit -am "rm"
```
 
* 12

> Name: rm_cached
Level: 12
Difficulty: **
 
A file has accidentally been added to your staging area, find out which file and remove it from the staging area.  *NOTE* Do not remove the file from the file system, only from git.
 
```
git rm --cache deleteme.rb
```
 
* 13
 
> Name: stash
Level: 13
Difficulty: **
 
You've made some changes and want to work on them later. You should save them, but don't commit them.
 
```
git stash
```
 
* 14
 
> Name: rename
Level: 14
Difficulty: ***
 
We have a file called `oldfile.txt`. We want to rename it to `newfile.txt` and stage this change.
 
```
git mv oldfile.txt newfile.txt
git add .
```
 
* 15

> Name: restructure
Level: 15
Difficulty: ***
 
You added some files to your repository, but now realize that your project needs to be restructured.  Make a new folder named `src` and using Git move all of the .html files into this folder.
 
```
mkdir src
git mv *.html ./src/
```
 
* 16

> Name: log
Level: 16
Difficulty: **

You will be asked for the hash of most recent commit.  You will need to investigate the logs of the repository for this.
 
```
git log
```
 
* 17
 
> Name: tag
> Level: 17
> Difficulty: **

We have a git repo and we want to tag the current commit with `new_tag`.
 
```
git tag new_tag
```
 
* 18

> Name: push_tags
> Level: 18
> Difficulty: **

There are tags in the repository that aren't pushed into remote repository. Push them now.
 
```
git push --tags
```
 
* 19

> Name: commit_amend
> Level: 19
> Difficulty: **

The `README` file has been committed, but it looks like the file `forgotten_file.rb` was missing from the commit.  Add the file and amend your previous commit to include it.
 
```
git commit --amend -m 'new_commit'
```
 
* 20

> Name: commit_in_future
Level: 20
Difficulty: **

Commit your changes with the future date (e.g. tomorrow).

```
git commit -m "message" --date "Tue Jul 19 23:00:00 2018 +0800" // 要使用明天的日期
```

* 21

> Name: reset
Level: 21
Difficulty: **

There are two files to be committed.  The goal was to add each file as a separate commit, however both were added by accident.  Unstage the file `to_commit_second.rb` using the reset command (don't commit anything).

```
git reset HEAD to_commit_second.rb
```

* 22

> Name: reset_soft
Level: 22
Difficulty: **

You committed too soon. Now you want to undo the last commit, while keeping the index.

```
git reset --soft 7075e0120c2276e13265ece68a0fd64594d24175
```
 
* 23

> Name: checkout_file
Level: 23
Difficulty: ***

A file has been modified, but you don't want to keep the modification.  Checkout the `config.rb` file from the last commit.

```
git checkout config.rb
```

* 24

> Name: remote
Level: 24
Difficulty: **

This project has a remote repository.  Identify it.

```
git remote -v
githug
my_remote_repo
```

* 25

> Name: remote_url
Level: 25
Difficulty: **

The remote repositories have a url associated to them.  Please enter the url of remote_location.

```
git remote -v
githug
https://github.com/githug/not_a_repo
```

* 26

> Name: pull
Level: 26
Difficulty: **

You need to pull changes from your origin repository.

```
git pull origin 
```

* 27

> Name: remote_add
Level: 27
Difficulty: **

Add a remote repository called `origin` with the url https://github.com/githug/githug

```
git remote add origin https://github.com/githug/githug
```

* 28

> Name: push
Level: 28
Difficulty: ***

Your local master branch has diverged from the remote origin/master branch. Rebase your commit onto origin/master and push it to remote.

```
git pull origin master --rebase
git push origin master
```

* 29

> Name: diff
Level: 29
Difficulty: **

There have been modifications to the `app.rb` file since your last commit.  Find out which line has changed.

```
git diff
githug
26
```

* 30

> Name: blame
Level: 30
Difficulty: **

Someone has put a password inside the file `config.rb` find out who it was.

```
git blame config.rb
githug
Spider Man
```

* 31

> Name: branch
Level: 31
Difficulty: *

You want to work on a piece of code that has the potential to break things, create the branch test_code.

```
git branch test_code
```

* 32

> Name: checkout
Level: 32
Difficulty: **

Create and switch to a new branch called my_branch.  You will need to create a branch like you did in the previous level.

```
git checkout -b my_branch
```

* 33

> Name: checkout_tag
Level: 33
Difficulty: **

You need to fix a bug in the version 1.2 of your app. Checkout the tag `v1.2`.

```
git checkout tags/v1.2
```

* 35

> Name: branch_at
Level: 35
Difficulty: ***

You forgot to branch at the previous commit and made a commit on top of it. Create branch test_branch at the commit before the last.

```
git checkout -b test_branch HEAD^
```

* 36

> Name: delete_branch
Level: 36
Difficulty: **

You have created too many branches for your project. There is an old branch in your repo called 'delete_me', you should delete it.

```
git branch -D delete_me
```

* 37

> Name: push_branch
Level: 37
Difficulty: **

You've made some changes to a local branch and want to share it, but aren't yet ready to merge it with the 'master' branch.  Push only 'test_branch' to the remote repository

```
git push origin test_branch
```

* 38

> Name: merge
Level: 38
Difficulty: **

We have a file in the branch 'feature'; Let's merge it to the master branch.

```
git merge feature
```

* 39

> Name: fetch
Level: 39
Difficulty: **

Looks like a new branch was pushed into our remote repository. Get the changes without merging them with the local repository 

```
git fetch origin
```

* 40

> Name: rebase
Level: 40
Difficulty: **

We are using a git rebase workflow and the feature branch is ready to go into master. Let's rebase the feature branch onto our master branch.

```
git rebase master feature 
```

* 41

> Name: rebase_onto
Level: 41
Difficulty: **

You have created your branch from `wrong_branch` and already made some commits, and you realise that you needed to create your branch from `master`. Rebase your commits onto `master` branch so that you don't have `wrong_branch` commits.

```
git rebase wrong_branch --onto master
```

* 42

> Name: repack
Level: 42
Difficulty: **

Optimise how your repository is packaged ensuring that redundant packs are removed.

```
git repack -d
```

* 43
 
> Name: cherry-pick
> Level: 43
> Difficulty: ***
>
> Your new feature isn't worth the time and you're going to delete it. But it has one commit that fills in `README` file, and you want this commit to be on the master as well.
 
```
git checkout new-feature
git log -p README.md
git checkout master
git cherry-pick { commit }
```
 
* 44
 
> Name: grep
> Level: 44
> Difficulty: **
>
> Your project's deadline approaches, you should evaluate how many TODOs are left in your code
 
```
git grep TODO ./
```
 
* 45
 
> Name: rename_commit
> Level: 45
> Difficulty: ***
>
> Correct the typo in the message of your first (non-root) commit.
 
```
git log
git rebase -i { commit }
进入编辑页面，将需要改动的行（第一行）的pick改为reword （注意，只需要通过reword来标记，不要修改拼写）。 保存退出后在弹出的第二个窗口里修改拼写错误commmit改为commit。
```
 
* 46
 
> Name: squash
> Level: 46
> Difficulty: ****
>
> You have committed several times but would like all those changes to be one commit.
 
```
git log
git rebase -i HEAD~4
(
git rebase -i { commit }
)
将弹出编辑页的第2、3、4行的pick改为squash， 第二个弹出页直接保存退出即可。
```

* 47
 
> Name: merge_squash
Level: 47
Difficulty: ***
 
> Merge all commits from the long-feature-branch as a single commit.
 
```
git merge --squash long-feature-branch
git commit -m "47"
```
 
* 48
 
> Name: reorder
> Level: 48
> Difficulty: ****
>
> You have committed several times but in the wrong order. Please reorder your commits.
 
```
git log
git rebase -i HEAD~3
(
git rebase -i { commit }
)
把第二个提交和第三个提交换个位置
```
 
* 49
 
> Name: bisect
> Level: 49
> Difficulty: ***
>
> A bug was introduced somewhere along the way.  You know that running `ruby prog.rb 5` should output 15.  You can also run `make test`.  What are the first 7 chars of the hash of the commit that introduced the bug.
 
```
    git log -p prog.rb
commit 18ed2ac1522a014412d4303ce7c8db39becab076
Author: Robert Bittle <guywithnose@gmail.com>
Date:   Mon Apr 23 06:52:10 2012 -0400

    Another Commit

diff --git a/prog.rb b/prog.rb
index 917e700..7562257 100644
--- a/prog.rb
+++ b/prog.rb
@@ -1,3 +1,3 @@
//#!/usr/bin/env ruby

-puts Integer((Integer(ARGV[0])-1)*4)-1
+puts Integer((Integer(ARGV[0])-2)*4)-1

这次被改掉的原表达式值为15，所以答案是这次提交的前七位commit
```
 
* 50
 
> Name: stage_lines
> Level: 50
> Difficulty: ****
>
> You've made changes within a single file that belong to two different features, but neither of the changes are yet staged. Stage only the changes belonging to the first feature.
 
```
git add -p feature.rb
输入`e`，在编辑器中删除关于second feature的修改的那一行
```

* 51
 
> Name: find_old_branch
> Level: 51
> Difficulty: ****
>
> You have been working on a branch but got distracted by a major issue and forgot the name of it. Switch back to that branch.
 
```
git reflog
git checkout solve_world_hunger
```
 
* 52
 
> Name: revert
> Level: 52
> Difficulty: ****
>
> You have committed several times but want to undo the middle commit.
> All commits have been pushed, so you can't change existing history.
 
```
    git log
    git revert HEAD~1
```
 
* 53
 
> Name: restore
> Level: 53
> Difficulty: ****
>
> You decided to delete your latest commit by running `git reset --hard HEAD^`.  (Not a smart thing to do.)  You then change your mind, and want that commit back.  Restore the deleted commit.
 
```
    git reflog
    git checkout { commit }
```
 
* 54
 
>
> Name: conflict
> Level: 54
> Difficulty: ****
>
> You need to merge mybranch into the current branch (master). But there may be some incorrect changes in mybranch which may cause conflicts. Solve any merge-conflicts you come across and finish the merge.
 
```
git merge mybranch
vi poem.txt
git add poem.txt
git commit -a
```
 
* 55
 
> Name: submodule
> Level: 55
> Difficulty: **
>
> You want to include the files from the following repo: `https://github.com/jackmaney/githug-include-me` into a the folder `./githug-include-me`. Do this without cloning the repo or copying the files from the repo into this repo.

```
git submodule add https://github.com/jackmaney/githug-include-me ./githug-include-me
```
 
* 56
 
> Name: contribute
> Level: 56
> Difficulty: ***
>
> This is the final level, the goal is to contribute to this repository by making a pull request on GitHub.  Please note that this level is designed to encourage you to add a valid contribution to Githug, not testing your ability to create a pull request.  Contributions that are likely to be accepted are levels, bug fixes and improved documentation.
 