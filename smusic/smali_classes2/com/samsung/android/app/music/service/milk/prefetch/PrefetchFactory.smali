.class public Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchFactory;
.super Ljava/lang/Object;
.source "PrefetchFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManager(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;

    move-result-object v0

    return-object v0
.end method
