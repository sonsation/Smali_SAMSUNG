.class Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$3;
.super Ljava/lang/Object;
.source "MilkDownloadServiceStub.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->clearAllTempFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$3;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".tag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mdrm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

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
