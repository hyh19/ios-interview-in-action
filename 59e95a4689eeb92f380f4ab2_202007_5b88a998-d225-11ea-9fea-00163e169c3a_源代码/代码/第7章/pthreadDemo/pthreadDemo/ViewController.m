//
//  ViewController.m
//  pthreadDemo
//
//  Created by 珲少 on 2020/1/19.
//  Copyright © 2020 jaki. All rights reserved.
//

#import "ViewController.h"
#import "pthread.h"

@interface ViewController ()

@end

@implementation ViewController

void sigleHandle(int sig) {
    NSLog(@"处理信号");
    printf("%d", sig);
    return ;
}
sigset_t sigs;
pthread_once_t once;
void *task(void *param) {
    NSLog(@"%p", pthread_self());
//    while (1) {
//        int s;
//        sigwait(&sigs,&s);
//        sigleHandle(SIGUSR2);
//    }
    pthread_once(&once, oncefunc);
    
    
//    pthread_exit("end");
//    NSLog(@"当前线程:%@, 参数:%@", [NSThread currentThread], param);
//    pthread_key_t key_t;
//    pthread_key_create(&key_t, NULL);
//    pthread_setspecific(key_t, @"Hi~");
//    NSString *hi = (__bridge NSString *)(pthread_getspecific(key_t));
//    NSLog(@"%@", hi);
    
//    pthread_mutex_t lock;
//    // 第2个参数为锁的属性配置参数
//    pthread_mutex_init(&lock, NULL);
//    // 加锁
//    pthread_mutex_lock(&lock);
//    /*
//     这之间为需要互斥执行的逻辑
//     */
//    pthread_mutex_unlock(&lock);
    return NULL;
}

void oncefunc(void) {
    NSLog(@"once");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%p", pthread_self());
    pthread_t thread;
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
//    int state;
//    pthread_attr_getdetachstate(&attr, &state);
//    NSLog(@"%d", state);
//
//    pthread_attr_setguardsize(&attr, 128);
//    size_t guardSize;
//    pthread_attr_getguardsize(&attr, &guardSize);
//    NSLog(@"%zu", guardSize);
//
//    pthread_attr_setinheritsched(&attr, PTHREAD_INHERIT_SCHED);
//    int inheritsched;
//    pthread_attr_getinheritsched(&attr, &inheritsched);
//    NSLog(@"%d", inheritsched);
//
//    struct sched_param param = {1};
//    pthread_attr_setschedparam(&attr, &param);
//    struct sched_param p;
//    pthread_attr_getschedparam(&attr, &p);
//    NSLog(@"%d", p.sched_priority);
//
//    pthread_attr_setschedpolicy(&attr, SCHED_FIFO);
//    int policy;
//    pthread_attr_getschedpolicy(&attr, &policy);
//
//    pthread_attr_setscope(&attr, PTHREAD_SCOPE_SYSTEM);
//    int scope;
//    pthread_attr_getscope(&attr, &scope);
    
   
    
   
    pthread_once(&once, oncefunc);
    pthread_once(&once, oncefunc);
//    sigemptyset(&sigs);
//    sigaddset(&sigs,SIGUSR2);
    pthread_create(&thread, NULL, task, NULL);
////    pthread_attr_destroy(&attr);
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        int res = pthread_kill(thread, SIGUSR2);
           ESRCH;
//           NSLog(@"res:%d", res);
//    });
    
   
    
//    NSLog(@"%p", thread);
    //    pthread_detach(thread);
//    void *ptr;
//    pthread_join(thread, &ptr);
//    NSLog(@"%s", ptr);
}

@end
