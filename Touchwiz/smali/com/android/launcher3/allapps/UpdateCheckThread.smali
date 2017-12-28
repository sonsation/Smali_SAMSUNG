.class public Lcom/android/launcher3/allapps/UpdateCheckThread;
.super Ljava/lang/Thread;
.source "UpdateCheckThread.java"


# static fields
.field private static final NETWORK_NOT_CONNECTED:I = 0x5

.field private static final NULL_STRING:Ljava/lang/String; = ""

.field private static final RESULT_CONTENTS_SIZE:I = 0x14

.field private static final SEND_SEARCH_END:I = 0x2

.field private static final SEND_THREAD_INFORMATION:I = 0x1

.field private static final SERVER_URL:Ljava/lang/String; = "http://vas.samsungapps.com/myApps/display/searchAppList.as"

.field private static final TAG:Ljava/lang/String; = "UpdateCheckThread"


# instance fields
.field private final mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mContext:Landroid/content/Context;

.field private final mFromReceiver:Z

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fromReceiver"    # Z
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "apps"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mContext:Landroid/content/Context;

    .line 60
    iput-boolean p2, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mFromReceiver:Z

    .line 61
    iput-object p3, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mQuery:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 63
    return-void
.end method

.method private checkUpdate(Ljava/net/URL;)Z
    .locals 18
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .line 158
    .local v8, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 159
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v15

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 161
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 163
    .local v7, "eventType":I
    const-string v14, ""

    .line 164
    .local v14, "start_name":Ljava/lang/String;
    const-string v6, ""

    .line 166
    .local v6, "end_name":Ljava/lang/String;
    new-instance v13, Lcom/android/launcher3/allapps/SearchResultStore;

    invoke-direct {v13}, Lcom/android/launcher3/allapps/SearchResultStore;-><init>()V

    .line 167
    .local v13, "result":Lcom/android/launcher3/allapps/SearchResultStore;
    const/4 v2, 0x0

    .line 168
    .local v2, "content":Lcom/android/launcher3/allapps/GalaxyAppsContent;
    const/4 v1, 0x0

    .line 169
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 171
    .local v3, "count":I
    :goto_0
    const/4 v15, 0x1

    if-eq v7, v15, :cond_17

    .line 172
    packed-switch v7, :pswitch_data_0

    .line 244
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 179
    const-string v15, "resultCode"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 180
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->resultCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 306
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "content":Lcom/android/launcher3/allapps/GalaxyAppsContent;
    .end local v3    # "count":I
    .end local v6    # "end_name":Ljava/lang/String;
    .end local v7    # "eventType":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "result":Lcom/android/launcher3/allapps/SearchResultStore;
    .end local v14    # "start_name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 307
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "xml parsing error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v15, 0x0

    .line 321
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    return v15

    .line 181
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "content":Lcom/android/launcher3/allapps/GalaxyAppsContent;
    .restart local v3    # "count":I
    .restart local v6    # "end_name":Ljava/lang/String;
    .restart local v7    # "eventType":I
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "result":Lcom/android/launcher3/allapps/SearchResultStore;
    .restart local v14    # "start_name":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v15, "resultMsg"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 182
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->resultMsg:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 309
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "content":Lcom/android/launcher3/allapps/GalaxyAppsContent;
    .end local v3    # "count":I
    .end local v6    # "end_name":Ljava/lang/String;
    .end local v7    # "eventType":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "result":Lcom/android/launcher3/allapps/SearchResultStore;
    .end local v14    # "start_name":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 310
    .local v5, "e":Ljava/net/SocketException;
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "network is unavailable:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v15, 0x0

    goto :goto_2

    .line 183
    .end local v5    # "e":Ljava/net/SocketException;
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "content":Lcom/android/launcher3/allapps/GalaxyAppsContent;
    .restart local v3    # "count":I
    .restart local v6    # "end_name":Ljava/lang/String;
    .restart local v7    # "eventType":I
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "result":Lcom/android/launcher3/allapps/SearchResultStore;
    .restart local v14    # "start_name":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v15, "totalCount"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 184
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->totalCount:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 312
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "content":Lcom/android/launcher3/allapps/GalaxyAppsContent;
    .end local v3    # "count":I
    .end local v6    # "end_name":Ljava/lang/String;
    .end local v7    # "eventType":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "result":Lcom/android/launcher3/allapps/SearchResultStore;
    .end local v14    # "start_name":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 313
    .local v5, "e":Ljava/io/IOException;
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "network error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-eqz v15, :cond_3

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v15, v15, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 316
    .local v11, "msg":Landroid/os/Message;
    const/4 v15, 0x5

    iput v15, v11, Landroid/os/Message;->what:I

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v15, v15, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v15, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    .end local v11    # "msg":Landroid/os/Message;
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 185
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "content":Lcom/android/launcher3/allapps/GalaxyAppsContent;
    .restart local v3    # "count":I
    .restart local v6    # "end_name":Ljava/lang/String;
    .restart local v7    # "eventType":I
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "result":Lcom/android/launcher3/allapps/SearchResultStore;
    .restart local v14    # "start_name":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v15, "currencyUnit"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 186
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->currencyUnit:Ljava/lang/String;

    goto/16 :goto_1

    .line 187
    :cond_5
    const-string v15, "currencyUnitPrecedes"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 188
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->currencyUnitPrecedes:Ljava/lang/String;

    goto/16 :goto_1

    .line 189
    :cond_6
    const-string v15, "currencyUnitHasPenny"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 190
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->currencyUnitHasPenny:Ljava/lang/String;

    goto/16 :goto_1

    .line 191
    :cond_7
    const-string v15, "decimalSymbol"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 192
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->decimalSymbol:Ljava/lang/String;

    goto/16 :goto_1

    .line 193
    :cond_8
    const-string v15, "currencyUnitDivision"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 194
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->currencyUnitDivision:Ljava/lang/String;

    goto/16 :goto_1

    .line 195
    :cond_9
    const-string v15, "digitGroupingSymbol"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 196
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->digitGroupingSymbol:Ljava/lang/String;

    goto/16 :goto_1

    .line 197
    :cond_a
    const-string v15, "keyword"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 198
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->keyword:Ljava/lang/String;

    goto/16 :goto_1

    .line 199
    :cond_b
    const-string v15, "productID"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 200
    new-instance v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    .end local v2    # "content":Lcom/android/launcher3/allapps/GalaxyAppsContent;
    invoke-direct {v2}, Lcom/android/launcher3/allapps/GalaxyAppsContent;-><init>()V

    .line 201
    .restart local v2    # "content":Lcom/android/launcher3/allapps/GalaxyAppsContent;
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->productID:Ljava/lang/String;

    goto/16 :goto_1

    .line 202
    :cond_c
    const-string v15, "productName"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 203
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->productName:Ljava/lang/String;

    goto/16 :goto_1

    .line 204
    :cond_d
    const-string v15, "productImgUrl"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 205
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->productImgUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 206
    :cond_e
    const-string v15, "appID"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 207
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->appID:Ljava/lang/String;

    goto/16 :goto_1

    .line 208
    :cond_f
    const-string v15, "version"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 209
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->version:Ljava/lang/String;

    goto/16 :goto_1

    .line 210
    :cond_10
    const-string v15, "versionCode"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 211
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->versionCode:Ljava/lang/String;

    goto/16 :goto_1

    .line 212
    :cond_11
    const-string v15, "realContentSize"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 213
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->realContentSize:Ljava/lang/String;

    goto/16 :goto_1

    .line 214
    :cond_12
    const-string v15, "sellerName"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 215
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->sellerName:Ljava/lang/String;

    goto/16 :goto_1

    .line 216
    :cond_13
    const-string v15, "rating"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 217
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->rating:Ljava/lang/String;

    goto/16 :goto_1

    .line 218
    :cond_14
    const-string v15, "price"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 219
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->price:Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    :cond_15
    const-string v15, "discountFlag"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 221
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->discountFlag:Ljava/lang/String;

    goto/16 :goto_1

    .line 222
    :cond_16
    const-string v15, "discountPrice"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 223
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/android/launcher3/allapps/GalaxyAppsContent;->discountPrice:Ljava/lang/String;

    goto/16 :goto_1

    .line 234
    :pswitch_2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 235
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "end_name:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v15, "content"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 237
    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 249
    :cond_17
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "resultCode:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->resultCode:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "resultMsg:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->resultMsg:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "totalCount:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->totalCount:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "currencyUnit:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->currencyUnit:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "currencyUnitPrecedes:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->currencyUnitPrecedes:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "currencyUnitHasPenny:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->currencyUnitHasPenny:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "decimalSymbol:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->decimalSymbol:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "currencyUnitDivision:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->currencyUnitDivision:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "digitGroupingSymbol:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->digitGroupingSymbol:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "size:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v9, v15, :cond_1a

    const/16 v15, 0x14

    if-ge v3, v15, :cond_1a

    .line 263
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "productID:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->productID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "productName:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->productName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "productImgUrl:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->productImgUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "panelImgUrl:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->panelImgUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "edgeAppType:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->edgeAppType:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "appID:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->appID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "versionCode:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->versionCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "realContentSize:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->realContentSize:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sellerName:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->sellerName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rating:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->rating:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "price:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->price:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "discountFlag:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->discountFlag:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v16, "UpdateCheckThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "discountPrice:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->discountPrice:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 278
    :try_start_4
    new-instance v10, Ljava/net/URL;

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->productImgUrl:Ljava/lang/String;

    invoke-direct {v10, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 279
    .local v10, "imgurl":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    .line 284
    .end local v10    # "imgurl":Ljava/net/URL;
    :goto_4
    :try_start_5
    const-string v15, "UpdateCheckThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "count : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v4, "data":Landroid/os/Bundle;
    const-string v16, "title"

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->productName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v16, "ID"

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->appID:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v16, "seller"

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->sellerName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v16, "price"

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->price:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v16, "rating"

    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;

    iget-object v15, v15, Lcom/android/launcher3/allapps/GalaxyAppsContent;->rating:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v15, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_19

    .line 292
    const-string v15, "size"

    const/16 v16, 0x14

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-eqz v15, :cond_18

    .line 298
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v15, v15, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 299
    .restart local v11    # "msg":Landroid/os/Message;
    const/4 v15, 0x1

    iput v15, v11, Landroid/os/Message;->what:I

    .line 300
    invoke-virtual {v11, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 301
    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 302
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v15, v15, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v15, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 303
    add-int/lit8 v3, v3, 0x1

    .line 261
    .end local v11    # "msg":Landroid/os/Message;
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 280
    .end local v4    # "data":Landroid/os/Bundle;
    :catch_3
    move-exception v5

    .line 281
    .local v5, "e":Ljava/lang/Exception;
    const-string v15, "Error"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 294
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "data":Landroid/os/Bundle;
    :cond_19
    const-string v15, "size"

    iget-object v0, v13, Lcom/android/launcher3/allapps/SearchResultStore;->contents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 321
    .end local v4    # "data":Landroid/os/Bundle;
    :cond_1a
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getMCC()Ljava/lang/String;
    .locals 6

    .prologue
    .line 326
    iget-object v4, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 327
    .local v3, "telMgr":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "mcc":Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v1, v0

    .line 336
    .end local v0    # "mcc":Ljava/lang/String;
    .local v1, "mcc":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 332
    .end local v1    # "mcc":Ljava/lang/Object;
    .restart local v0    # "mcc":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "networkOperator":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 336
    .restart local v1    # "mcc":Ljava/lang/Object;
    goto :goto_0
.end method

.method private getMNC()Ljava/lang/String;
    .locals 5

    .prologue
    .line 341
    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "mnc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 345
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_1

    .line 351
    .end local v0    # "mnc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 349
    .restart local v0    # "mnc":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    .line 351
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getCSC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "cscVersion":Ljava/lang/String;
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    return-object v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 68
    const-string v6, "UpdateCheckThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start update check (from Receiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mFromReceiver:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v6, "http://vas.samsungapps.com/myApps/display/searchAppList.as"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v6, "?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v6, "keyword="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v6, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v6, "&imgWidth="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const/16 v6, 0x87

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v6, "&alignOrder="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v6, "bestMatch"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v6, "&deviceId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v6, "&startNum="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v6, "&endNum="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/16 v6, 0x1e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v6, "&mcc="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/allapps/UpdateCheckThread;->getMCC()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v6, "&mnc="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {p0}, Lcom/android/launcher3/allapps/UpdateCheckThread;->getMNC()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v6, "&csc="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/UpdateCheckThread;->getCSC()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v6, "&osVersion="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v6, "&srcType="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v6, "HOMESCREEN"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v6, "&clientType="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v6, "GALAXYAPPS"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v6, "&sdlVersion="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    sget v6, Landroid/os/Build$VERSION;->SEM_INT:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/4 v3, 0x0

    .line 130
    .local v3, "result":Z
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "server_url":Ljava/lang/String;
    const-string v6, "UpdateCheckThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check url : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 135
    .local v5, "url":Ljava/net/URL;
    invoke-direct {p0, v5}, Lcom/android/launcher3/allapps/UpdateCheckThread;->checkUpdate(Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 140
    if-nez v3, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mFromReceiver:Z

    if-nez v6, :cond_0

    .line 141
    const-string v6, "UpdateCheckThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end update check mFromReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mFromReceiver:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const-string v6, "UpdateCheckThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end update check : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v6, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-eqz v6, :cond_1

    .line 145
    iget-object v6, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 146
    .local v2, "msg":Landroid/os/Message;
    iput v10, v2, Landroid/os/Message;->what:I

    .line 147
    iget-object v6, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "server_url":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e1":Ljava/net/MalformedURLException;
    :try_start_1
    const-string v6, "UpdateCheckThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MalformedURLException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    if-nez v3, :cond_2

    iget-boolean v6, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mFromReceiver:Z

    if-nez v6, :cond_2

    .line 141
    const-string v6, "UpdateCheckThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end update check mFromReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mFromReceiver:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    const-string v6, "UpdateCheckThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end update check : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v6, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-eqz v6, :cond_1

    .line 145
    iget-object v6, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 146
    .restart local v2    # "msg":Landroid/os/Message;
    iput v10, v2, Landroid/os/Message;->what:I

    .line 147
    iget-object v6, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 140
    .end local v1    # "e1":Ljava/net/MalformedURLException;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v6

    if-nez v3, :cond_3

    iget-boolean v7, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mFromReceiver:Z

    if-nez v7, :cond_3

    .line 141
    const-string v7, "UpdateCheckThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end update check mFromReceiver : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mFromReceiver:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    const-string v7, "UpdateCheckThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end update check : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v7, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-eqz v7, :cond_4

    .line 145
    iget-object v7, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v7, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 146
    .restart local v2    # "msg":Landroid/os/Message;
    iput v10, v2, Landroid/os/Message;->what:I

    .line 147
    iget-object v7, p0, Lcom/android/launcher3/allapps/UpdateCheckThread;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v7, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIncomingHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    throw v6
.end method
