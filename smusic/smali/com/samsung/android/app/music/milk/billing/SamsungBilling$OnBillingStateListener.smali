.class public interface abstract Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;
.super Ljava/lang/Object;
.source "SamsungBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBillingStateListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFail(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
