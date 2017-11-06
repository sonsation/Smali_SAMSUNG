.class final Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;
.super Ljava/lang/Object;
.source "SamsungAppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppVersionChecker"
.end annotation


# static fields
.field private static final NODE_SERVER:Ljava/lang/String; = "/result/serverInfo/serverURL[1]"

.field private static final NODE_VERSIONCODE:Ljava/lang/String; = "/result/versionCode[1]"

.field private static final POST_FIX_URL_PARAM_STUB_UPDATE_CHECK_AS:Ljava/lang/String; = "/stub/stubUpdateCheck.as"

.field private static final SAMSUNG_APPS_BASE_URL:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

.field private static final SAMSUNG_APPS_CHINA_VAS_URL:Ljava/lang/String; = "https://cn-ms.samsungapps.com/getCNVasURL.as"

.field private static final SCHEME_HTTP:Ljava/lang/String; = "https://"


# instance fields
.field private final CHINA_MCC:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->this$0:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-class v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->TAG:Ljava/lang/String;

    .line 212
    const-string v0, "460"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->CHINA_MCC:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->mContext:Landroid/content/Context;

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;Landroid/content/Context;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$1;

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;-><init>(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->getVersionCode(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBaseUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    const-string v1, "460"

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->getMcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://cn-ms.samsungapps.com/getCNVasURL.as"

    const-string v3, "/result/serverInfo/serverURL[1]"

    .line 321
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->getUrlRequestResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/stub/stubUpdateCheck.as"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "requestUrl":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 325
    .end local v0    # "requestUrl":Ljava/lang/String;
    :cond_0
    const-string v0, "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

    .restart local v0    # "requestUrl":Ljava/lang/String;
    goto :goto_0
.end method

.method private getMcc()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 303
    iget-object v3, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    .line 304
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 306
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 307
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "operator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 309
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v3, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMcc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMcc - operator : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-object v0
.end method

.method private getUrlRequestResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "node"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v4, 0x0

    .line 271
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 272
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 273
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 274
    .local v2, "in":Ljava/io/InputStream;
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->getValue(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 278
    if-eqz v4, :cond_0

    .line 279
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 282
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v5

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v4, :cond_1

    .line 279
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 282
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 278
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 279
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v5
.end method

.method private getValue(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "node"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 287
    .local v1, "is":Lorg/xml/sax/InputSource;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v3

    .line 289
    .local v3, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    invoke-interface {v3, p2, v1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValue  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 295
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getVersionCheckUrl(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;
    .locals 4
    .param p1, "urlParams"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;

    .prologue
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;->access$1200(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVersionCheckUrl - url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-object v0
.end method

.method private getVersionCode(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;
    .locals 4
    .param p1, "urlParams"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;

    .prologue
    .line 256
    .line 257
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->getVersionCheckUrl(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/result/versionCode[1]"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->getUrlRequestResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "versionCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVersionCode - versionCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-object v0
.end method
