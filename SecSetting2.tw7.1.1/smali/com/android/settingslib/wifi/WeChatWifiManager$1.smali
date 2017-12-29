.class Lcom/android/settingslib/wifi/WeChatWifiManager$1;
.super Ljava/lang/Thread;
.source "WeChatWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/wifi/WeChatWifiManager;->checkLogout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WeChatWifiManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/wifi/WeChatWifiManager;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/android/settingslib/wifi/WeChatWifiManager;

    iput-object p2, p0, Lcom/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, "appID":Ljava/lang/String;
    invoke-static {}, Lcom/android/settingslib/wifi/WeChatWifiManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v6, "wx7c913747c92bb95d"

    .line 85
    .local v6, "appID":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "content://com.tencent.mm.sdk.comm.provider/getWifiList?appid=%s"

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v6, v3, v13

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 89
    .local v10, "jsonData":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    const-string/jumbo v0, "[{\'ssid\':\'Logout\'}]"

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 90
    .local v9, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 94
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "jsonData":Ljava/lang/String;
    :goto_1
    new-array v4, v14, [Ljava/lang/String;

    const-string/jumbo v0, "1"

    aput-object v0, v4, v13

    aput-object v10, v4, v12

    const-string/jumbo v0, "1"

    const/4 v3, 0x2

    aput-object v0, v4, v3

    .line 96
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 97
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 98
    const-string/jumbo v0, "WeChatWifiManager"

    const-string/jumbo v2, "checkLogout, cursor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 83
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .local v6, "appID":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "wxc85693d064779676"

    .local v6, "appID":Ljava/lang/String;
    goto :goto_0

    .line 91
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v10    # "jsonData":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 92
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "WeChatWifiManager"

    const-string/jumbo v3, "checkLogout, JSONException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v10    # "jsonData":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne v0, v12, :cond_2

    .line 104
    const-string/jumbo v0, "retCode"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 105
    .local v11, "returnCode":I
    if-ne v11, v14, :cond_3

    .line 106
    const-string/jumbo v0, "WeChatWifiManager"

    const-string/jumbo v2, "checkLogout, Be logout in WeChat"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/android/settingslib/wifi/WeChatWifiManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/WeChatWifiManager;->-wrap0(Lcom/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {v0, v12}, Lcom/android/settingslib/wifi/WeChatWifiManager;->-set0(Lcom/android/settingslib/wifi/WeChatWifiManager;Z)Z

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/android/settingslib/wifi/WeChatWifiManager;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    .line 116
    .end local v11    # "returnCode":I
    :cond_2
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 78
    return-void

    .line 111
    .restart local v11    # "returnCode":I
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {v0, v13}, Lcom/android/settingslib/wifi/WeChatWifiManager;->-set0(Lcom/android/settingslib/wifi/WeChatWifiManager;Z)Z

    goto :goto_2
.end method
