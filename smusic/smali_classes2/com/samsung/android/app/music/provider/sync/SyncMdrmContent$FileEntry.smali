.class Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;
.super Ljava/lang/Object;
.source "SyncMdrmContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileEntry"
.end annotation


# static fields
.field static final DUMMY_ID:I = -0x1


# instance fields
.field mDateAdded:J

.field mLastModified:J

.field final mPath:Ljava/lang/String;

.field final mRowId:J

.field mSourceId:J

.field mValidity:J


# direct methods
.method constructor <init>(JJLjava/lang/String;JJJ)V
    .locals 0
    .param p1, "rowId"    # J
    .param p3, "sourceId"    # J
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "lastModified"    # J
    .param p8, "dateAdded"    # J
    .param p10, "validity"    # J

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mRowId:J

    .line 93
    iput-wide p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mSourceId:J

    .line 94
    iput-object p5, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mPath:Ljava/lang/String;

    .line 95
    iput-wide p6, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mLastModified:J

    .line 96
    iput-wide p10, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mValidity:J

    .line 97
    iput-wide p8, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mDateAdded:J

    .line 98
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRowId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent$FileEntry;->mRowId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
