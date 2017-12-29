.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;
.super Landroid/os/AsyncTask;
.source "WifiSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkGoToWebPageHTTPResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field responseCode:I

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

.field urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->responseCode:I

    .line 746
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "pageName"    # [Ljava/lang/String;

    .prologue
    .line 753
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 754
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->urlConnection:Ljava/net/HttpURLConnection;

    .line 755
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 756
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->urlConnection:Ljava/net/HttpURLConnection;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 757
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 758
    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "Connected successfully!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->responseCode:I

    .line 760
    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Go To Webpage: HTTP Response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->responseCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->responseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 769
    const-string/jumbo v4, "WifiSettingsBase"

    const-string/jumbo v5, "Go to Webpage: reach to finally"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 761
    return-object v3

    .line 765
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 766
    .local v1, "f":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "Go to Webpage: Error opening connection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "Go to Webpage: reach to finally"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 772
    .end local v1    # "f":Ljava/io/IOException;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 762
    :catch_1
    move-exception v0

    .line 763
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_2
    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "Go to Webpage: Error getting URL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "Go to Webpage: reach to finally"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 768
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v3

    .line 769
    const-string/jumbo v4, "WifiSettingsBase"

    const-string/jumbo v5, "Go to Webpage: reach to finally"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 768
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "pageName"    # [Ljava/lang/Object;

    .prologue
    .line 751
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "pageName":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 777
    if-eqz p1, :cond_0

    .line 778
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    .line 776
    :goto_0
    return-void

    .line 780
    :cond_0
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "Go to Webpage: HTTP response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 776
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
