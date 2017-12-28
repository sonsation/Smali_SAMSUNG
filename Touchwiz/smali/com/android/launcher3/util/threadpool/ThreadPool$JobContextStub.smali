.class Lcom/android/launcher3/util/threadpool/ThreadPool$JobContextStub;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/threadpool/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobContextStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public setCancelListener(Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;

    .prologue
    .line 65
    return-void
.end method

.method public setMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method
