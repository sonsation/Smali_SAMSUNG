.class final Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;
.super Ljava/lang/Object;
.source "SyncAudioMetaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CombinedInfo"
.end annotation


# instance fields
.field mCombinedAlbumIds:Ljava/lang/String;

.field mCombinedDates:Ljava/lang/String;

.field mCombinedIds:Ljava/lang/String;

.field mCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$1;

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;-><init>()V

    return-void
.end method
