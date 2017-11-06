.class Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;
.super Lcom/android/volley/Request;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CDNVolleyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest$DiscFullError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final DEFAULT_RESOURCE_SIZE:I

.field private final SPARE_MEMORY_FACTOR:D

.field protected final TAG:Ljava/lang/String;

.field private mFileDest:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileDest"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/io/File;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 48
    const-class v0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->TAG:Ljava/lang/String;

    .line 50
    const v0, 0x19000

    iput v0, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->DEFAULT_RESOURCE_SIZE:I

    .line 51
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    iput-wide v0, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->SPARE_MEMORY_FACTOR:D

    .line 60
    iput-object p4, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 61
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->mFileName:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->mFileDest:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private generateZipFile([B)Ljava/io/File;
    .locals 8
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 89
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->mFileDest:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "fDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 91
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->TAG:Ljava/lang/String;

    const-string v6, "fail to make dirs"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v2, 0x0

    .line 100
    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 104
    :cond_0
    :goto_0
    return-object v2

    .line 94
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->mFileDest:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_3
    array-length v6, p1

    invoke-virtual {v4, p1, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 100
    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .line 104
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 100
    .end local v0    # "fDir":Ljava/io/File;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v3, :cond_3

    .line 101
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v5

    .line 100
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "fDir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private getAvailableStorage()J
    .locals 8

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 109
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 111
    .local v5, "stat":Landroid/os/StatFs;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_0

    .line 112
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 113
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 118
    .local v0, "availableBlocks":J
    :goto_0
    mul-long v6, v0, v2

    return-wide v6

    .line 115
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    :cond_0
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 116
    .restart local v2    # "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .restart local v0    # "availableBlocks":J
    goto :goto_0
.end method


# virtual methods
.method protected deliverResponse(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->deliverResponse(Ljava/io/File;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 10
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 69
    .local v0, "data":[B
    array-length v2, v0

    .line 70
    .local v2, "expectedFileSize":I
    if-gez v2, :cond_0

    .line 71
    const v2, 0x19000

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->getAvailableStorage()J

    move-result-wide v4

    long-to-double v4, v4

    int-to-double v6, v2

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    mul-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1

    .line 74
    new-instance v3, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest$DiscFullError;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest$DiscFullError;-><init>(Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    .line 81
    :goto_0
    return-object v3

    .line 78
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->generateZipFile([B)Ljava/io/File;

    move-result-object v3

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/volley/VolleyError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0
.end method
