.class Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
.super Ljava/lang/Object;
.source "PlaylistItemUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistItemInfo"
.end annotation


# instance fields
.field cpAttrs:I

.field thumbnailId:J

.field trackCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->thumbnailId:J

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->trackCount:I

    .line 107
    const v0, 0x10001

    iput v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->cpAttrs:I

    return-void
.end method
