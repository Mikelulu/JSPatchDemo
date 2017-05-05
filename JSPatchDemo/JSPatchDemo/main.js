

require('UIView, UIColor, UILabel')


/** 添加view*/
// 动态新增 Property
defineClass("ViewController",['data', 'totalCount'], {
            
            
            init: function() {
            self = self.super().init;
            self.setData(["a", "b"])//定义类型 （数组）     //添加新的 Property (id data)
            self.setTotalCount(2) // Int
            return self
            },
            
            viewDidLoad: function() {
            
            self.ORIGviewDidLoad();
            
            var data = self.data()     //获取 Property 值
            var totalCount = self.totalCount()
            console.log(data);
            console.log(totalCount);
            
            console.log("222");
            var view = UIView.alloc().init();
            view.setBackgroundColor(UIColor.grayColor());
            view.setFrame({
                                     x: 20,
                                     y: 20,
                                     width: 100,
                                     height: 100
                                     });
            view.setCenter(self.view().center());
            self.view().addSubview(view);
            var lable1 = UILabel.alloc().initWithFrame({
                                                       x: 20,
                                                       y: 20,
                                                       width: 50,
                                                       height: 20
                                                       });
            view.addSubview(lable1);
            lable1.setText("test");
            
            }
});

/** msnory约束view */
/*
defineClass("ViewController", {
            
            viewDidLoad: function() {
            
            self.ORIGviewDidLoad();
            
            var view = UIView.alloc().init();
            view.setBackgroundColor(UIColor.redColor());
            self.view().addSubview(view);
            console.log("222");
            view.mas__makeConstraints(block('MASConstraintMaker*', function(make) {
                make.top().equalTo()(self.view()).with().offset()(200);
                make.left().equalTo()(self.view()).with().offset()(10);
                make.right().equalTo()(self.view().mas__right());
                make.height().equalTo()((50));
            }));
            
            }
});
*/

/// 添加方法的实现
defineClass("ViewController", {
        
            btnClicked: function(btn) { // 带参数的方法
            
            console.log("按钮被点击");
            btn.setTitle_forState("我改变了",0);
            self.totalCount = 10 // 属性赋值
            self.data = ["Mike","Michael"];
            console.log(self.totalCount);
            console.log(self.data);
            },
});
