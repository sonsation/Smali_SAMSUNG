.class public final Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;
.super Ljava/lang/Object;
.source "AlbumTrackCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RedirectedInfoBuildData"
.end annotation


# instance fields
.field public final columnCount:I

.field public lastDiscNumber:I

.field public pos:I

.field public final realigned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public subtitlePos:I

.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->this$0:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->realigned:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->columnCount:I

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->lastDiscNumber:I

    .line 145
    return-void
.end method
