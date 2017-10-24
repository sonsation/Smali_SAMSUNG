.class Landroid/view/SurfaceView$4;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/SurfaceView;

    .prologue
    .line 931
    iput-object p1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 13
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x0

    .line 1038
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v3, v3, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v3, :cond_0

    .line 1046
    :try_start_0
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1053
    .end local v0    # "c":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1054
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 1055
    return-object v0

    .line 1047
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SurfaceHolder"

    const-string/jumbo v8, "Exception locking surface"

    invoke-static {v3, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1061
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1062
    .local v6, "now":J
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-wide v8, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v10, 0x64

    add-long v4, v8, v10

    .line 1063
    .local v4, "nextTime":J
    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 1065
    sub-long v8, v4, v6

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1068
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1070
    :cond_2
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput-wide v6, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 1071
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1073
    return-object v12

    .line 1066
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 942
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 945
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 941
    return-void

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 953
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 954
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 952
    return-void

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFixedSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 960
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 961
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 962
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 963
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 959
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    const/4 v1, 0x0

    .line 980
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 981
    const/4 p1, 0x4

    .line 983
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 984
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 976
    :cond_1
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .prologue
    const/4 v1, 0x1

    .line 998
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 999
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1000
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 997
    return-void

    .line 999
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSizeFromLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 969
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v2, :cond_1

    .line 970
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v2, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 971
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 968
    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 994
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1084
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1085
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1083
    return-void
.end method
