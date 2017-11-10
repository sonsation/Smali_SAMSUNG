.class Lcom/samsung/android/glview/GLAbsList$MainHandler;
.super Landroid/os/Handler;
.source "GLAbsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLAbsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/glview/GLAbsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLAbsList;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList$MainHandler;->mList:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList$MainHandler;->mList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLAbsList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLAbsList;->hideScrollBar()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList$MainHandler;->mList:Ljava/lang/ref/WeakReference;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lcom/samsung/android/glview/GLAbsList;->access$100(Lcom/samsung/android/glview/GLAbsList;Z)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/glview/GLAbsList;->access$202(Lcom/samsung/android/glview/GLAbsList;Z)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
