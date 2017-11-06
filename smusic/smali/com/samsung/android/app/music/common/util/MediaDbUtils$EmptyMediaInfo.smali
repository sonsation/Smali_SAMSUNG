.class public Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;
.super Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
.source "MediaDbUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/util/MediaDbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyMediaInfo"
.end annotation


# static fields
.field private static sEmptyMediaInfo:Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;-><init>()V

    .line 459
    iput-wide v0, p0, Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;->id:J

    .line 460
    iput-wide v0, p0, Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;->albumId:J

    .line 461
    return-void
.end method

.method public static getEmptyInfo()Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;->sEmptyMediaInfo:Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;->sEmptyMediaInfo:Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;

    .line 467
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;->sEmptyMediaInfo:Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;

    return-object v0
.end method
