.class public final Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;
.super Landroid/os/AsyncTask;
.source "SourceIdGetterTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask$SourceIdResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAudioIds:[J

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask$SourceIdResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;[JLcom/samsung/android/app/music/common/util/task/SourceIdGetterTask$SourceIdResultListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioIds"    # [J
    .param p3, "listener"    # Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask$SourceIdResultListener;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;->mAudioIds:[J

    .line 22
    iput-object p3, p0, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;->mListener:Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask$SourceIdResultListener;

    .line 23
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 27
    const-string v0, "_id"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;->mAudioIds:[J

    .line 28
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "source_id"

    aput-object v5, v2, v10

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 31
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    const/4 v7, 0x0

    .line 33
    .local v7, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .local v9, "sourceIds":[Ljava/lang/String;
    move v8, v7

    .line 35
    .end local v7    # "index":I
    .local v8, "index":I
    :goto_0
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8

    .line 36
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_7

    .line 39
    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .end local v7    # "index":I
    .end local v9    # "sourceIds":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v9

    .line 39
    .restart local v7    # "index":I
    .restart local v9    # "sourceIds":[Ljava/lang/String;
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "index":I
    .end local v9    # "sourceIds":[Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    move-object v9, v4

    .line 40
    goto :goto_1

    .line 39
    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 29
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v4, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    .restart local v7    # "index":I
    .restart local v9    # "sourceIds":[Ljava/lang/String;
    :cond_7
    move v8, v7

    .end local v7    # "index":I
    .restart local v8    # "index":I
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask;->mListener:Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask$SourceIdResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask$SourceIdResultListener;->onResult([Ljava/lang/String;)V

    .line 46
    return-void
.end method
