myrailsapp
==========

[[Here]] is my rails app. Includes demos.



关于helper的总结
====

rails默认为controller加载所有的helper，所以helper 方法无论写在那个文件中，
都可以在view层调用。

Rails >= 3.1
通过在配置文件中，

config.action_controller.include_all_helpers = false

Rails < 3.1
默认在ApplicationController中有以下行，删除即可
helper :all

如果经过以上的配置，那么controller默认就只会加载自己对应的helper，
如果controller有继承关系，那么也会加载父类对应的helper

通过在controller中使用以下方法，可以加载制定的helper
helper CommonHelper

