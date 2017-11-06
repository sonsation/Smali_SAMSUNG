.class Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;
.super Ljava/lang/Thread;
.source "PrivateModeFileOperationThread.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OperationState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultPrivatePath:Ljava/lang/String;

.field private mDestPath:Ljava/lang/String;

.field private mDestfilename:Ljava/lang/String;

.field private mFolderItemCntHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasyKeyArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFolder:Z

.field private mMoveAction:I

.field private mMoveToPrivate:Z

.field private mMovedItemCnt:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

.field private mPrivateModeCursorManager:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

.field private mProcessedCount:I

.field private mStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[JZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "moveItemIds"    # [J
    .param p4, "isFolder"    # Z

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 82
    new-instance v1, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;-><init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMovedItemCnt:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDefaultPrivatePath:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    .line 109
    iput-boolean p4, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mIsFolder:Z

    .line 110
    new-instance v1, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

    invoke-direct {v1, p1, p3, p4}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;-><init>(Landroid/content/Context;[JZ)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mPrivateModeCursorManager:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 113
    sget-object v1, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->RESTORE_MUSIC_PATH:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-string v1, "PrivateMode"

    const-string v2, "Fail to make directory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDefaultPrivatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveToPrivate:Z

    .line 125
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mIsFolder:Z

    if-eqz v1, :cond_3

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHasyKeyArray:Ljava/util/ArrayList;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mFolderItemCntHash:Ljava/util/HashMap;

    .line 129
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mProcessedCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestfilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->updateProgress(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addPostfix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "postfixNum"    # I

    .prologue
    const/16 v7, 0x29

    const/16 v6, 0x28

    .line 424
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 425
    .local v1, "lastDot":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 426
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "ext":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .end local v0    # "ext":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .local v3, "resultStr":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 432
    .end local v3    # "resultStr":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "resultStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private checkDuplicatedFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {p1}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->isFileExit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :try_start_0
    iget v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveAction:I

    .line 340
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    const-string v1, "PrivateMode"

    const-string v2, "checkDuplicatedFile() there is duplicated file.So wait user action "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 360
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :cond_0
    :goto_0
    const-string v1, "PrivateMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDuplicatedFile() mMoveAction :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveAction:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_2

    .line 367
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->renameFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestfilename:Ljava/lang/String;

    :cond_1
    :goto_1
    move-object v1, p1

    .line 377
    :goto_2
    return-object v1

    .line 360
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 369
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveAction:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_3

    .line 370
    invoke-static {p1}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->doDeleteFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->deleteFromSrcProvider(Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private checkInvalidFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveToPrivate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDefaultPrivatePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveToPrivate:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDefaultPrivatePath:Ljava/lang/String;

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteFromSrcProvider(Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 565
    const-wide/16 v8, -0x1

    .line 566
    .local v8, "sourceId":J
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 567
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 571
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 574
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2

    .line 576
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 577
    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 578
    .local v7, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v5, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 580
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    return-void

    .line 574
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 566
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v5, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private getFolderDestPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "destFolderPath":Ljava/lang/StringBuilder;
    const-string v3, "bucket_display_name"

    .line 315
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "folderName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDefaultPrivatePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/UiUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Music"

    .line 318
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->isFileExit(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->renameFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local v0    # "destFolderPath":Ljava/lang/StringBuilder;
    .local v1, "destFolderPath":Ljava/lang/StringBuilder;
    move-object v0, v1

    .line 323
    .end local v1    # "destFolderPath":Ljava/lang/StringBuilder;
    .restart local v0    # "destFolderPath":Ljava/lang/StringBuilder;
    :cond_0
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSourceId(J)J
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 546
    const-wide/16 v8, -0x1

    .line 547
    .local v8, "sourceId":J
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "source_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 550
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 553
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 554
    :cond_1
    :goto_0
    return-wide v8

    .line 553
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 547
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private getUpdatedContentValues(J)Landroid/content/ContentValues;
    .locals 11
    .param p1, "sourceId"    # J

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 584
    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 585
    .local v7, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_data"

    aput-object v3, v2, v5

    const-string v3, "is_secretbox"

    aput-object v3, v2, v8

    const-string v3, "bucket_id"

    aput-object v3, v2, v9

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 586
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 592
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "_data"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v0, "is_secretbox"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string v0, "bucket_id"

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 596
    const-string v0, "bucket_display_name"

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 598
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    :cond_1
    :goto_0
    return-object v7

    .line 598
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 585
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private isPrivateModeOnAndMounted(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 483
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    .line 485
    invoke-static {v0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveFile(JLjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "id"    # J
    .param p3, "srcPath"    # Ljava/lang/String;
    .param p4, "destPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 381
    const-string v2, "PrivateMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveFile() To :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v1

    .line 387
    :cond_1
    new-instance v2, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;-><init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)V

    invoke-static {p3, p4, v2}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->doMoveFile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;)I

    move-result v0

    .line 395
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 407
    :pswitch_0
    const-string v2, "PrivateMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveFile() - FAIL case :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :pswitch_1
    const-string v1, "PrivateMode"

    const-string v2, "moveFile() Success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->updateMediaDb(JLjava/lang/String;)V

    .line 399
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->updatePlaylistMapDb(JLjava/lang/String;)V

    .line 400
    const/4 v1, 0x1

    goto :goto_0

    .line 402
    :pswitch_2
    const-string v2, "PrivateMode"

    const-string v3, "moveFile() - Space Insufficient "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->doStopMove()V

    .line 404
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private moveSelectedItem()V
    .locals 15

    .prologue
    .line 229
    const-string v11, "PrivateMode"

    const-string v12, "moveSelectedItem() start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mPrivateModeCursorManager:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->removeNowPlayingTrack()V

    .line 231
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mPrivateModeCursorManager:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->getItemsCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 233
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_2

    .line 234
    :cond_0
    const-string v11, "PrivateMode"

    const-string v12, "moveSelectedItem(), cursor is null or size is 0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mPrivateModeCursorManager:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v11, v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->removeFromCurrentPlaylist(Landroid/database/Cursor;)V

    .line 244
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 248
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    .line 249
    .local v3, "destFolderPath":Ljava/lang/String;
    const-string v9, ""

    .line 251
    .local v9, "prevFolderID":Ljava/lang/String;
    :cond_3
    iget-boolean v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_4

    .line 299
    :goto_1
    iget v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mProcessedCount:I

    iget-object v12, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestfilename:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->updateProgress(ILjava/lang/String;I)V

    .line 300
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 304
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "content://com.sec.android.app.music/audio/playlists/#/members"

    .line 305
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    .line 304
    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 254
    :cond_4
    :try_start_1
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->isPrivateModeOnAndMounted(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 255
    const-string v11, "PrivateMode"

    const-string v12, "moveSelectedItem() At this time, Private mode off or private dir unmounted"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 299
    .end local v3    # "destFolderPath":Ljava/lang/String;
    .end local v9    # "prevFolderID":Ljava/lang/String;
    :catchall_0
    move-exception v11

    iget v12, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mProcessedCount:I

    iget-object v13, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestfilename:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->updateProgress(ILjava/lang/String;I)V

    .line 300
    iget-object v12, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 304
    iget-object v12, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "content://com.sec.android.app.music/audio/playlists/#/members"

    .line 305
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    .line 304
    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v11

    .line 260
    .restart local v3    # "destFolderPath":Ljava/lang/String;
    .restart local v9    # "prevFolderID":Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-boolean v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mIsFolder:Z

    if-eqz v11, :cond_6

    .line 262
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mPrivateModeCursorManager:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v11, v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->getBucketID(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "folderID":Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 264
    new-instance v11, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;-><init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;)V

    iput-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMovedItemCnt:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    .line 265
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHasyKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    move-object v9, v5

    .line 267
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getFolderDestPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .end local v5    # "folderID":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mPrivateModeCursorManager:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v11, v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->getAudioTrackID(Landroid/database/Cursor;)J

    move-result-wide v6

    .line 273
    .local v6, "id":J
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mPrivateModeCursorManager:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v11, v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->getAudioTrackData(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, "srcPath":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mPrivateModeCursorManager:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v11, v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeCursorManager;->getAudioTrackDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "destFileName":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->checkInvalidFilePath(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 276
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMovedItemCnt:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    iget v12, v11, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->alreadymoved:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->alreadymoved:I

    .line 282
    :goto_2
    iget v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mProcessedCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mProcessedCount:I

    .line 284
    if-eqz v10, :cond_7

    iget-boolean v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mIsFolder:Z

    if-eqz v11, :cond_7

    .line 286
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mFolderItemCntHash:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMovedItemCnt:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    invoke-virtual {v11, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const/4 v11, 0x0

    const/16 v12, 0x2f

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->getFileCount(Ljava/io/File;)I

    move-result v11

    if-nez v11, :cond_7

    .line 292
    invoke-static {v8}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->doDeleteFile(Ljava/lang/String;)Z

    move-result v1

    .line 293
    .local v1, "deleted":Z
    const-string v11, "PrivateMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMoveFolder() Delete SrcFolder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v1    # "deleted":Z
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_3

    goto/16 :goto_1

    .line 278
    :cond_8
    iput-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestfilename:Ljava/lang/String;

    .line 279
    iget-object v12, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMovedItemCnt:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    iget v13, v12, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->moved:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mIsFolder:Z

    if-eqz v11, :cond_9

    move-object v11, v3

    :goto_3
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->checkDuplicatedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v6, v7, v10, v11}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->moveFile(JLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v13

    iput v11, v12, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->moved:I

    goto :goto_2

    :cond_9
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private renameFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 416
    .local v0, "i":I
    :goto_0
    new-instance v2, Ljava/io/File;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->addPostfix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v2, "renamedFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method private scanExternalStorage(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 448
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 451
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/music/common/util/UiUtils;->EXTERNAL_STORAGE_DIRECTORY_PATH:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 453
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 457
    .local v0, "directories":[Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$2;-><init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)V

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;->scanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 475
    .end local v0    # "directories":[Ljava/lang/String;
    :goto_1
    return-void

    .line 455
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/music/common/util/UiUtils;->EXTERNAL_STORAGE_DIRECTORY_PATH:Ljava/lang/String;

    aput-object v1, v0, v3

    .restart local v0    # "directories":[Ljava/lang/String;
    goto :goto_0

    .line 472
    .end local v0    # "directories":[Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/MusicIntent;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/common/util/UiUtils;->EXTERNAL_STORAGE_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 472
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private updateMediaDb(JLjava/lang/String;)V
    .locals 15
    .param p1, "id"    # J
    .param p3, "destPath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    .line 494
    const/4 v6, 0x0

    .line 495
    .local v6, "uri":Landroid/net/Uri;
    cmp-long v8, p1, v12

    if-eqz v8, :cond_0

    .line 496
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 497
    move-wide/from16 v0, p1

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 496
    invoke-static {v8}, Lcom/samsung/android/app/music/provider/MusicContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 499
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 500
    .local v7, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 501
    iget-object v8, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "privatePath":Ljava/lang/String;
    const-string v8, "_data"

    move-object/from16 v0, p3

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v9, "is_secretbox"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v8, "PrivateMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateMediaDb() mode on, uri : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", target path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getSourceId(J)J

    move-result-wide v4

    .line 510
    .local v4, "sourceId":J
    cmp-long v8, v4, v12

    if-eqz v8, :cond_1

    .line 511
    invoke-direct {p0, v4, v5, v7}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->updateSrcProviderPath(JLandroid/content/ContentValues;)V

    .line 512
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getUpdatedContentValues(J)Landroid/content/ContentValues;

    move-result-object v7

    .line 515
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v6, v7, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v3    # "privatePath":Ljava/lang/String;
    .end local v4    # "sourceId":J
    :goto_1
    return-void

    .line 503
    .restart local v3    # "privatePath":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v2

    .line 517
    .local v2, "e":Landroid/database/sqlite/SQLiteConstraintException;
    const-string v8, "PrivateMode"

    const-string v9, "Update failed, just waiting from media scan update."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 520
    .end local v2    # "e":Landroid/database/sqlite/SQLiteConstraintException;
    .end local v3    # "privatePath":Ljava/lang/String;
    :cond_3
    const-string v8, "_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 521
    const-string v8, "_data"

    move-object/from16 v0, p3

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v8, "PrivateMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateMediaDb() mode off, id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", target path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    const-string v9, "content://media/external/playlists/personal/cache/save"

    .line 526
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 525
    invoke-static {v8, v9, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v11, v11}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 528
    :catch_1
    move-exception v2

    .line 529
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "PrivateMode"

    const-string v9, "Moving item caching failed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updatePlaylistMapDb(JLjava/lang/String;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "destPath"    # Ljava/lang/String;

    .prologue
    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "selectionArgs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET audio_data=? WHERE audio_data IS NOT NULL AND audio_data NOT LIKE \'dummy%\' AND audio_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "rawQuery":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.sec.android.app.music/"

    .line 541
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "exec_sql"

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 543
    return-void
.end method

.method private updateProgress(ILjava/lang/String;I)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "curFilename"    # Ljava/lang/String;
    .param p3, "curPercent"    # I

    .prologue
    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    const-string v1, "curFilename"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "curPercent"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 445
    return-void
.end method

.method private updateSrcProviderPath(JLandroid/content/ContentValues;)V
    .locals 3
    .param p1, "sourceId"    # J
    .param p3, "value"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 559
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 560
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 559
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MusicContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 561
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p3, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 562
    return-void
.end method


# virtual methods
.method public doStopMove()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mStopped:Z

    .line 182
    return-void
.end method

.method public getAlreadyMovedCount()I
    .locals 5

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "result":I
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mIsFolder:Z

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHasyKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mFolderItemCntHash:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    .line 206
    .local v0, "itemcnt":Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;
    iget v4, v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->moved:I

    if-nez v4, :cond_0

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "itemcnt":Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMovedItemCnt:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    iget v1, v3, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->alreadymoved:I

    .line 213
    :cond_2
    return v1
.end method

.method public getDestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mDestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMovedCount()I
    .locals 5

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "result":I
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mIsFolder:Z

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHasyKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 189
    .local v2, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mFolderItemCntHash:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    .line 190
    .local v0, "itemcnt":Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;
    iget v4, v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->moved:I

    if-lez v4, :cond_0

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "itemcnt":Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMovedItemCnt:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    iget v1, v3, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->moved:I

    .line 197
    :cond_2
    return v1
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mIsFolder:Z

    return v0
.end method

.method public isMoveToPrivate()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveToPrivate:Z

    return v0
.end method

.method public notifyAction(IZ)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "allApply"    # Z

    .prologue
    .line 165
    const-string v1, "PrivateMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAction() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " allApply "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-eqz p2, :cond_0

    .line 167
    or-int/lit8 v1, p1, 0x8

    iput v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveAction:I

    .line 171
    :goto_0
    monitor-enter p0

    .line 173
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    return-void

    .line 169
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mMoveAction:I

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "PrivateMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAction() Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->moveSelectedItem()V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->scanExternalStorage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getMovedCount()I

    move-result v0

    .line 148
    .local v0, "count":I
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 147
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getMovedCount()I

    move-result v0

    .line 148
    .restart local v0    # "count":I
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mStopped:Z

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    :goto_1
    throw v1

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public setResultHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->mHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method
