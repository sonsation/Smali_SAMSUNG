.class public interface abstract Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;
.super Ljava/lang/Object;
.source "SubscriptionGetter.java"


# virtual methods
.method public abstract getAvailableCount()I
.end method

.method public abstract getSubscription()Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
.end method

.method public abstract getSubscriptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract invalidateSubscription()V
.end method
