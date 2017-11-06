.class public Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;
.super Ljava/util/TimerTask;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanupFileTask"
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup(Ljava/lang/String;J)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 564
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;->mFilePath:Ljava/lang/String;

    .line 565
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 566
    .local v0, "timer":Ljava/util/Timer;
    invoke-virtual {v0, p0, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 567
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, "cleanup":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;->mFilePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 555
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->getValidateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 560
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run : clean up ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method
