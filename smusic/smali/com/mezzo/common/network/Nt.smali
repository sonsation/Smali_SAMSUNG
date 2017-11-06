.class public Lcom/mezzo/common/network/Nt;
.super Landroid/os/AsyncTask;
.source "Nt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mezzo/common/network/Nt$OnProgressbarListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/mezzo/common/network/request/RequestNTCommon;",
        "Ljava/lang/Integer;",
        "Lcom/mezzo/common/network/request/RequestNTCommon;",
        ">;"
    }
.end annotation


# static fields
.field public static mdeviceModel:Ljava/lang/String;

.field public static mdeviceVersion:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isError:Z

.field private isProgressBar:Z

.field private isRunning:Z

.field private progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/mezzo/common/network/Nt;->mdeviceVersion:Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/mezzo/common/network/Nt;->mdeviceModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "isProgressbar"    # Z
    .param p4, "isError"    # Z

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mezzo/common/network/Nt;->isRunning:Z

    .line 26
    iput-boolean v1, p0, Lcom/mezzo/common/network/Nt;->isProgressBar:Z

    .line 27
    iput-boolean v1, p0, Lcom/mezzo/common/network/Nt;->isError:Z

    .line 32
    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/Nt;->setContext(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/mezzo/common/network/Nt;->setHandler(Landroid/os/Handler;)V

    .line 34
    invoke-virtual {p0, p3}, Lcom/mezzo/common/network/Nt;->setProgressBar(Z)V

    .line 35
    invoke-virtual {p0, p4}, Lcom/mezzo/common/network/Nt;->setError(Z)V

    .line 36
    return-void
.end method

.method private bodyCheck(Lcom/mezzo/common/network/request/RequestNTCommon;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/mezzo/common/network/request/RequestNTCommon;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mezzo/common/network/request/RequestNTCommon;->getBody()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/mezzo/common/network/request/RequestNTCommon;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 136
    :cond_0
    return-void
.end method

.method private httpSetting(Ljava/net/HttpURLConnection;Lcom/mezzo/common/network/request/RequestNTCommon;)V
    .locals 4
    .param p1, "http"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mezzo/common/network/Nt;->mdeviceModel:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mezzo/common/network/Nt;->mdeviceVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Android OS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MezzoSDKVer=2.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "header":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionTimeOut()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 141
    invoke-virtual {p2}, Lcom/mezzo/common/network/request/RequestNTCommon;->getSocketTimeOut()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 142
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 144
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 146
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private httpsSetting(Ljava/net/HttpURLConnection;Lcom/mezzo/common/network/request/RequestNTCommon;)V
    .locals 4
    .param p1, "http"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mezzo/common/network/Nt;->mdeviceModel:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mezzo/common/network/Nt;->mdeviceVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Android OS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MezzoSDKVer=2.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "header":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionTimeOut()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 155
    invoke-virtual {p2}, Lcom/mezzo/common/network/request/RequestNTCommon;->getSocketTimeOut()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 156
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 158
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 160
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private progressHide()V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isProgressBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getProgressbarListener()Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getProgressbarListener()Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mezzo/common/network/Nt$OnProgressbarListener;->hide()V

    .line 236
    :cond_0
    return-void
.end method

.method private progressShow()V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isProgressBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getProgressbarListener()Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getProgressbarListener()Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mezzo/common/network/Nt$OnProgressbarListener;->show()V

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/mezzo/common/network/request/RequestNTCommon;)Lcom/mezzo/common/network/request/RequestNTCommon;
    .locals 12
    .param p1, "params"    # [Lcom/mezzo/common/network/request/RequestNTCommon;

    .prologue
    const/4 v9, 0x1

    .line 40
    const/4 v8, 0x0

    aget-object v6, p1, v8

    .line 41
    .local v6, "request":Lcom/mezzo/common/network/request/RequestNTCommon;
    const/4 v5, 0x0

    .line 42
    .local v5, "out":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 43
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "http":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v6}, Lcom/mezzo/common/network/request/RequestNTCommon;->getUrl()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 47
    invoke-static {}, Lcom/mezzo/common/network/SslConnect;->trustAllHosts()V

    .line 48
    invoke-virtual {v6}, Lcom/mezzo/common/network/request/RequestNTCommon;->getUrl()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 49
    .local v3, "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v8, Lcom/mezzo/common/network/SslConnect;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v3, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 50
    move-object v2, v3

    .line 51
    invoke-direct {p0, v2, v6}, Lcom/mezzo/common/network/Nt;->httpsSetting(Ljava/net/HttpURLConnection;Lcom/mezzo/common/network/request/RequestNTCommon;)V

    .line 56
    .end local v3    # "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    if-eqz v2, :cond_6

    .line 58
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 59
    invoke-direct {p0, v6, v5}, Lcom/mezzo/common/network/Nt;->bodyCheck(Lcom/mezzo/common/network/request/RequestNTCommon;Ljava/io/OutputStream;)V

    .line 60
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 61
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 62
    .local v7, "statusCode":I
    const/16 v8, 0xc8

    if-lt v7, v8, :cond_4

    const/16 v8, 0x12c

    if-ge v7, v8, :cond_4

    .line 63
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 64
    const-string v8, "HTTP_OK"

    invoke-static {v8}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 66
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isError()Z

    move-result v10

    invoke-virtual {v6, v8, v4, v9, v10}, Lcom/mezzo/common/network/request/RequestNTCommon;->process(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V

    .line 67
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 75
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v7    # "statusCode":I
    :goto_2
    if-eqz v5, :cond_1

    .line 88
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 103
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    :cond_1
    :goto_3
    return-object v6

    .line 53
    .restart local v2    # "http":Ljava/net/HttpURLConnection;
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Lcom/mezzo/common/network/request/RequestNTCommon;->getUrl()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 54
    invoke-direct {p0, v2, v6}, Lcom/mezzo/common/network/Nt;->httpSetting(Ljava/net/HttpURLConnection;Lcom/mezzo/common/network/request/RequestNTCommon;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 81
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/mezzo/common/network/Nt;->cancel(Z)Z

    .line 82
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isError()Z

    move-result v11

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/mezzo/common/network/request/RequestNTCommon;->process(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    :cond_3
    if-eqz v5, :cond_1

    .line 88
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 89
    :catch_1
    move-exception v1

    .line 90
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 70
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "statusCode":I
    :cond_4
    :try_start_5
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 71
    const-string v8, "HTTP_FAIL"

    invoke-static {v8}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isError()Z

    move-result v11

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/mezzo/common/network/request/RequestNTCommon;->process(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 85
    .end local v7    # "statusCode":I
    :catchall_0
    move-exception v8

    .line 86
    if-eqz v5, :cond_5

    .line 88
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 93
    :cond_5
    :goto_4
    throw v8

    .line 77
    :cond_6
    :try_start_7
    const-string v8, "HTTP_FAIL"

    invoke-static {v8}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 89
    :catch_2
    move-exception v1

    .line 90
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 90
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 96
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    :cond_7
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 97
    invoke-virtual {p0, v9}, Lcom/mezzo/common/network/Nt;->cancel(Z)Z

    .line 98
    invoke-virtual {v6}, Lcom/mezzo/common/network/request/RequestNTCommon;->onInternetNotSupport()V

    .line 99
    const-string v8, "internet not support!"

    invoke-static {v8}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/mezzo/common/network/Nt;->progressHide()V

    goto/16 :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/Nt;->doInBackground([Lcom/mezzo/common/network/request/RequestNTCommon;)Lcom/mezzo/common/network/request/RequestNTCommon;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mezzo/common/network/Nt;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mezzo/common/network/Nt;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProgressbarListener()Lcom/mezzo/common/network/Nt$OnProgressbarListener;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mezzo/common/network/Nt;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/mezzo/common/network/Nt;->isError:Z

    return v0
.end method

.method public isProgressBar()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/mezzo/common/network/Nt;->isProgressBar:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/mezzo/common/network/Nt;->isRunning:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mezzo/common/network/Nt;->progressHide()V

    .line 128
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 129
    return-void
.end method

.method protected onPostExecute(Lcom/mezzo/common/network/request/RequestNTCommon;)V
    .locals 0
    .param p1, "result"    # Lcom/mezzo/common/network/request/RequestNTCommon;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mezzo/common/network/Nt;->progressHide()V

    .line 116
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/mezzo/common/network/request/RequestNTCommon;

    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/Nt;->onPostExecute(Lcom/mezzo/common/network/request/RequestNTCommon;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/mezzo/common/network/Nt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/Nt;->setRunning(Z)V

    .line 109
    invoke-direct {p0}, Lcom/mezzo/common/network/Nt;->progressShow()V

    .line 110
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 111
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/Nt;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mezzo/common/network/Nt;->context:Landroid/content/Context;

    .line 172
    return-void
.end method

.method public setError(Z)V
    .locals 0
    .param p1, "isError"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/mezzo/common/network/Nt;->isError:Z

    .line 204
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mezzo/common/network/Nt;->handler:Landroid/os/Handler;

    .line 188
    return-void
.end method

.method public setProgressBar(Z)V
    .locals 0
    .param p1, "isProgressBar"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/mezzo/common/network/Nt;->isProgressBar:Z

    .line 196
    return-void
.end method

.method public setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V
    .locals 0
    .param p1, "progressbarListener"    # Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mezzo/common/network/Nt;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 220
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/mezzo/common/network/Nt;->isRunning:Z

    .line 180
    return-void
.end method
