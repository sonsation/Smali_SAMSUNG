.class public Lcom/samsung/android/sdk/ppmt/PpmtUsageData;
.super Ljava/lang/Object;
.source "PpmtUsageData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "screenId"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "screenid is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    return-void
.end method

.method public static startSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "screenId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "screenid is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->getInstance()Lcom/samsung/android/sdk/ppmt/data/UsageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->save(Ljava/lang/String;)V

    .line 25
    return-void
.end method
