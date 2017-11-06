.class interface abstract Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil;
.super Ljava/lang/Object;
.source "SeslThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;,
        Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBackgroundProxy(Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;)Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback",
            "<TT;>;)",
            "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getMainThreadProxy(Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;)Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback",
            "<TT;>;)",
            "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end method
