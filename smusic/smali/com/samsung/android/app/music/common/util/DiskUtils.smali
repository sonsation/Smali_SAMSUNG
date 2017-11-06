.class public Lcom/samsung/android/app/music/common/util/DiskUtils;
.super Ljava/lang/Object;
.source "DiskUtils.java"


# static fields
.field private static final DIRECTORY_NAME_LYRICS:Ljava/lang/String; = "lyrics"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLyricsFolderPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const-string v0, "lyrics"

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
