.class Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;
.super Ljava/lang/Object;
.source "SeslMessageThreadUtil.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;,
        Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;)Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback",
            "<TT;>;)",
            "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil<TT;>;"
    .local p1, "callback":Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback<TT;>;"
    new-instance v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;-><init>(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;)V

    return-object v0
.end method

.method public getMainThreadProxy(Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;)Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback",
            "<TT;>;)",
            "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil<TT;>;"
    .local p1, "callback":Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback<TT;>;"
    new-instance v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;-><init>(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;)V

    return-object v0
.end method
