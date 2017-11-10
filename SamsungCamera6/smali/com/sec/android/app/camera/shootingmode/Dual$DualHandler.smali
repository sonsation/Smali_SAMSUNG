.class Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;
.super Landroid/os/Handler;
.source "Dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Dual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DualHandler"
.end annotation


# instance fields
.field private final mDual:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/Dual;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->mDual:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->mDual:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->mDual:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/Dual;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const-string v1, "Dual"

    const-string v2, "Hide Boundary"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$500(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$600(Lcom/sec/android/app/camera/shootingmode/Dual;)Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$600(Lcom/sec/android/app/camera/shootingmode/Dual;)Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setGrowable(Z)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$700(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
