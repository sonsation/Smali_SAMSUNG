.class Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;
.super Landroid/os/Handler;
.source "FastMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/FastMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingHandler"
.end annotation


# instance fields
.field private final mFastMotion:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/FastMotion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/FastMotion;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;->mFastMotion:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;->mFastMotion:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;->mFastMotion:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/FastMotion;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/FastMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/FastMotion;->access$100(Lcom/sec/android/app/camera/shootingmode/FastMotion;Z)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/FastMotion;->access$200(Lcom/sec/android/app/camera/shootingmode/FastMotion;Z)V

    goto :goto_0
.end method
