.class public Lcom/samsung/android/app/music/milk/share/ShortenUtil;
.super Ljava/lang/Object;
.source "ShortenUtil.java"


# static fields
.field private static final GOOGLE_CONSOLE_KEY:Ljava/lang/String; = "AIzaSyAt9p0xvM7ZpXdPT_iEpvrdeaGlEWuf3AY"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TIMEOUT_VALUE:I = 0x4e20

.field private static final URL_GOOGL_SERVICE:Ljava/lang/String; = "https://www.googleapis.com/urlshortener/v1/url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/app/music/milk/share/ShortenUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/ShortenUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shorten(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "longUrl"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v8, 0x0

    .line 28
    .local v8, "shortURL":Ljava/lang/String;
    const/4 v3, 0x0

    .line 29
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    const/4 v5, 0x0

    .line 32
    .local v5, "rd":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const-string v10, "https://www.googleapis.com/urlshortener/v1/url?key=AIzaSyAt9p0xvM7ZpXdPT_iEpvrdeaGlEWuf3AY"

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 34
    .local v0, "conn":Ljava/net/URLConnection;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 35
    const/16 v9, 0x4e20

    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 36
    const/16 v9, 0x4e20

    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 37
    const-string v9, "Content-Type"

    const-string v10, "application/json"

    invoke-virtual {v0, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .local v4, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "{\"longUrl\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 42
    sget-object v9, Lcom/samsung/android/app/music/milk/share/ShortenUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "shorten "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .local v6, "rd":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 48
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 49
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 53
    .end local v2    # "line":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "rd":Ljava/io/BufferedReader;
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 54
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .local v1, "e":Ljava/net/MalformedURLException;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    if-eqz v3, :cond_0

    .line 64
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 66
    :cond_0
    if-eqz v5, :cond_1

    .line 67
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 74
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_2
    sget-object v9, Lcom/samsung/android/app/music/milk/share/ShortenUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "shorten : result is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v8

    .line 52
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v0    # "conn":Ljava/net/URLConnection;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "rd":Ljava/io/BufferedReader;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v8

    .line 63
    if-eqz v4, :cond_3

    .line 64
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 66
    :cond_3
    if-eqz v6, :cond_4

    .line 67
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    move-object v5, v6

    .end local v6    # "rd":Ljava/io/BufferedReader;
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 71
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 69
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "rd":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "rd":Ljava/io/BufferedReader;
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 72
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 69
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v2    # "line":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .local v1, "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 56
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 63
    if-eqz v3, :cond_5

    .line 64
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 66
    :cond_5
    if-eqz v5, :cond_1

    .line 67
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 69
    :catch_4
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 57
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 63
    if-eqz v3, :cond_6

    .line 64
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 66
    :cond_6
    if-eqz v5, :cond_1

    .line 67
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    .line 69
    :catch_6
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 59
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 60
    .local v1, "e":Lorg/json/JSONException;
    :goto_5
    :try_start_b
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 63
    if-eqz v3, :cond_7

    .line 64
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 66
    :cond_7
    if-eqz v5, :cond_1

    .line 67
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_2

    .line 69
    :catch_8
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 62
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 63
    :goto_6
    if-eqz v3, :cond_8

    .line 64
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 66
    :cond_8
    if-eqz v5, :cond_9

    .line 67
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 71
    :cond_9
    :goto_7
    throw v9

    .line 69
    :catch_9
    move-exception v1

    .line 70
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 62
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v0    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_6

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "rd":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "rd":Ljava/io/BufferedReader;
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_6

    .line 59
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_5

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "rd":Ljava/io/BufferedReader;
    :catch_b
    move-exception v1

    move-object v5, v6

    .end local v6    # "rd":Ljava/io/BufferedReader;
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_5

    .line 57
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :catch_c
    move-exception v1

    move-object v3, v4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "rd":Ljava/io/BufferedReader;
    :catch_d
    move-exception v1

    move-object v5, v6

    .end local v6    # "rd":Ljava/io/BufferedReader;
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 55
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :catch_e
    move-exception v1

    move-object v3, v4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "rd":Ljava/io/BufferedReader;
    :catch_f
    move-exception v1

    move-object v5, v6

    .end local v6    # "rd":Ljava/io/BufferedReader;
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 53
    .end local v0    # "conn":Ljava/net/URLConnection;
    :catch_10
    move-exception v1

    goto/16 :goto_1

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v0    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :catch_11
    move-exception v1

    move-object v3, v4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    goto/16 :goto_1
.end method
