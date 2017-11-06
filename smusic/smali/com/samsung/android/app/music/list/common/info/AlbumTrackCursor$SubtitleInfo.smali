.class public final Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;
.super Ljava/lang/Object;
.source "AlbumTrackCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SubtitleInfo"
.end annotation


# instance fields
.field public final columns:[Ljava/lang/Object;

.field public final pos:I

.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;III)V
    .locals 4
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
    .param p2, "type"    # I
    .param p3, "pos"    # I
    .param p4, "columnSize"    # I

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->this$0:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->type:I

    .line 168
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->access$000(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->pos:I

    .line 169
    new-array v0, p4, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->columns:[Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->columns:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->pos:I

    xor-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 171
    return-void
.end method


# virtual methods
.method public setColumnValue(ILjava/lang/Object;)V
    .locals 1
    .param p1, "column"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->columns:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 175
    return-void
.end method
