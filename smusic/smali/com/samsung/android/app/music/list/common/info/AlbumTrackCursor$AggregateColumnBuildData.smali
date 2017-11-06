.class public final Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;
.super Ljava/lang/Object;
.source "AlbumTrackCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AggregateColumnBuildData"
.end annotation


# instance fields
.field public isSingleArtistAlbum:I

.field public preArtistName:Ljava/lang/String;

.field public totalDuration:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->isSingleArtistAlbum:I

    return-void
.end method
