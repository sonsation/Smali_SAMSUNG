.class public abstract Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.super Lrx/Subscriber;
.source "SimpleSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/samsung/android/app/music/milk/SimpleSubscriber;, "Lcom/samsung/android/app/music/milk/SimpleSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/samsung/android/app/music/milk/SimpleSubscriber;, "Lcom/samsung/android/app/music/milk/SimpleSubscriber<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    .local p0, "this":Lcom/samsung/android/app/music/milk/SimpleSubscriber;, "Lcom/samsung/android/app/music/milk/SimpleSubscriber<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onError"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method
