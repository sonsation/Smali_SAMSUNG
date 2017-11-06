.class public Lcom/samsung/android/app/musiclibrary/core/library/audio/SideSyncManager;
.super Ljava/lang/Object;
.source "SideSyncManager.java"


# static fields
.field private static final SETTING_SIDESYNC_CONNECTED:Ljava/lang/String; = "sidesync_source_connect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSideSyncConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 19
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "sidesync_source_connect"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1
.end method
