.class public final Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;
.super Ljava/lang/Object;
.source "AlbumTrackCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RedirectedInfo"
.end annotation


# instance fields
.field public pos:I

.field public subtitlePos:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "subtitlePos"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->pos:I

    .line 155
    iput p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->subtitlePos:I

    .line 156
    return-void
.end method
