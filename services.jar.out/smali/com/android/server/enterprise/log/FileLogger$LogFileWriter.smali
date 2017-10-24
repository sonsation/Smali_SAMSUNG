.class Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;
.super Landroid/os/AsyncTask;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogFileWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/concurrent/CountDownLatch;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/log/FileLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/log/FileLogger;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/log/FileLogger;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;-><init>(Lcom/android/server/enterprise/log/FileLogger;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "cdl"    # [Ljava/lang/Object;

    .prologue
    .line 260
    check-cast p1, [Ljava/util/concurrent/CountDownLatch;

    .end local p1    # "cdl":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->doInBackground([Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Void;
    .locals 10
    .param p1, "cdl"    # [Ljava/util/concurrent/CountDownLatch;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 263
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4}, Lcom/android/server/enterprise/log/FileLogger;->-get0(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iput-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4}, Lcom/android/server/enterprise/log/FileLogger;->-wrap1(Lcom/android/server/enterprise/log/FileLogger;)V

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/system/enterprise/logs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 271
    iget-object v5, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-wide v6, v5, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->lastTimeStamp:J

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/FileLogger;->-wrap0(J)J

    move-result-wide v6

    .line 270
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 275
    .local v3, "parentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_0
    new-instance v4, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;

    invoke-direct {v4, p0, v1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;-><init>(Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;Ljava/io/File;)V

    .line 307
    const/4 v5, 0x1

    .line 278
    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V

    .line 310
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->lastTimeStamp:J

    .line 311
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v4, v4, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 313
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4}, Lcom/android/server/enterprise/log/FileLogger;->-get1(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4}, Lcom/android/server/enterprise/log/FileLogger;->-get0(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 320
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/FileLogger;->-set0(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    .line 321
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/FileLogger;->-wrap2(Lcom/android/server/enterprise/log/FileLogger;Ljava/util/concurrent/CountDownLatch;)V

    .line 324
    :cond_1
    if-eqz p1, :cond_2

    aget-object v4, p1, v9

    if-eqz v4, :cond_2

    aget-object v4, p1, v9

    instance-of v4, v4, Ljava/util/concurrent/CountDownLatch;

    if-eqz v4, :cond_2

    .line 325
    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 327
    :cond_2
    return-object v8

    .line 264
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 314
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "parentFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 315
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
