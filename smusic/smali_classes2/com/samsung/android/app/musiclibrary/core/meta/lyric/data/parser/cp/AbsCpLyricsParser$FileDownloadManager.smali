.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager;
.super Ljava/lang/Object;
.source "AbsCpLyricsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDownloadManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager$DownloadTask;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager$OnDownloadFinishedListener;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x400

.field private static final DEFAULT_TIME_OUT:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static downloadFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager$OnDownloadFinishedListener;)V
    .locals 3
    .param p0, "networkUrl"    # Ljava/lang/String;
    .param p1, "downloadPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager$OnDownloadFinishedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 254
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager$DownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager$DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager$OnDownloadFinishedListener;)V

    .line 255
    .local v0, "task":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager$DownloadTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager$DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    return-void
.end method

.method static downloadFileSync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "networkPath"    # Ljava/lang/String;
    .param p1, "downloadPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    const/16 v0, 0x1388

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager;->downloadFileSync(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static downloadFileSync(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 14
    .param p0, "networkPath"    # Ljava/lang/String;
    .param p1, "downloadPath"    # Ljava/lang/String;
    .param p2, "timeOut"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 216
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    .line 249
    :cond_0
    :goto_0
    return v9

    .line 219
    :cond_1
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 220
    .local v8, "url":Ljava/net/URL;
    const/4 v3, 0x0

    .line 222
    .local v3, "httpConn":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 223
    const-string v9, "GET"

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 224
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 225
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 227
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 228
    .local v7, "respCode":I
    const/16 v9, 0xc8

    if-ne v7, v9, :cond_c

    .line 229
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 231
    .local v1, "buffer":[B
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    .local v4, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 232
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .local v6, "os":Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 236
    :goto_1
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "n":I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_5

    .line 237
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_1

    .line 234
    .end local v5    # "n":I
    :catch_0
    move-exception v9

    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_2
    if-eqz v6, :cond_2

    if-eqz v10, :cond_9

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_2
    :goto_3
    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 231
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v9

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 240
    :catchall_1
    move-exception v10

    move-object v11, v9

    move-object v9, v10

    :goto_4
    if-eqz v4, :cond_3

    if-eqz v11, :cond_b

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    :goto_5
    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 245
    .end local v1    # "buffer":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v7    # "respCode":I
    :catchall_2
    move-exception v9

    if-eqz v3, :cond_4

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v9

    .line 239
    .restart local v1    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "n":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "respCode":I
    :cond_5
    if-eqz v6, :cond_6

    if-eqz v11, :cond_8

    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 240
    :cond_6
    :goto_6
    if-eqz v4, :cond_7

    if-eqz v11, :cond_a

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 241
    :cond_7
    :goto_7
    const/4 v9, 0x1

    .line 245
    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 239
    :catch_2
    move-exception v12

    :try_start_b
    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 240
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "n":I
    .end local v6    # "os":Ljava/io/OutputStream;
    :catchall_3
    move-exception v9

    goto :goto_4

    .line 239
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "n":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .end local v5    # "n":I
    :catch_3
    move-exception v12

    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    .line 240
    .restart local v5    # "n":I
    :catch_4
    move-exception v10

    :try_start_c
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "n":I
    .end local v6    # "os":Ljava/io/OutputStream;
    :catch_5
    move-exception v10

    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 243
    .end local v1    # "buffer":[B
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_c
    sget-object v9, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$FileDownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadFileSync resp :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 245
    if-eqz v3, :cond_d

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    move v9, v10

    .line 249
    goto/16 :goto_0

    .line 239
    .restart local v1    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_4
    move-exception v9

    move-object v10, v11

    goto :goto_2
.end method
