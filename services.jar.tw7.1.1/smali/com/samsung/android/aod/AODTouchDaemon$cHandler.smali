.class Lcom/samsung/android/aod/AODTouchDaemon$cHandler;
.super Landroid/os/Handler;
.source "AODTouchDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AODTouchDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cHandler"
.end annotation


# instance fields
.field private code:I

.field final synthetic this$0:Lcom/samsung/android/aod/AODTouchDaemon;

.field private toggleExist:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/aod/AODTouchDaemon;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->this$0:Lcom/samsung/android/aod/AODTouchDaemon;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1}, Lcom/samsung/android/aod/AODTouchDaemon;->-get0(Lcom/samsung/android/aod/AODTouchDaemon;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->toggleExist:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/samsung/android/aod/AODTouchDaemon;->START:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L    # 5000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->code:I

    iget-boolean v0, p0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->toggleExist:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->this$0:Lcom/samsung/android/aod/AODTouchDaemon;

    invoke-static {v0}, Lcom/samsung/android/aod/AODTouchDaemon;->-get0(Lcom/samsung/android/aod/AODTouchDaemon;)Ljava/io/File;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->write(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "aodservice"

    const-string v1, "aod touch ok."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->this$0:Lcom/samsung/android/aod/AODTouchDaemon;

    invoke-static {v0}, Lcom/samsung/android/aod/AODTouchDaemon;->-get1(Lcom/samsung/android/aod/AODTouchDaemon;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "module_on_master,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->write(Ljava/io/File;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/aod/AODTouchDaemon;->CHECK:I

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/samsung/android/aod/AODTouchDaemon;->CHECK:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->this$0:Lcom/samsung/android/aod/AODTouchDaemon;

    invoke-static {v0}, Lcom/samsung/android/aod/AODTouchDaemon;->-get2(Lcom/samsung/android/aod/AODTouchDaemon;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "module_on_master,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "aodservice"

    const-string v1, "aod touch ok."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget v0, Lcom/samsung/android/aod/AODTouchDaemon;->START:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public read(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const-string v2, "\\Z"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public write(Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
