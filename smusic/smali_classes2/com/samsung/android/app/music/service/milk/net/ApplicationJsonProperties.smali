.class public Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
.super Ljava/lang/Object;
.source "ApplicationJsonProperties.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;


# static fields
.field public static final PROPERTIES_FILENAME:Ljava/lang/String; = "usm.json"

.field public static final TAG:Ljava/lang/String; = "ApplicationJsonProperties"

.field private static instance:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

.field private static mInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static readFromSDCard:Z


# instance fields
.field private final mObject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mInstanceMap:Ljava/util/HashMap;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->readFromSDCard:Z

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mObject:Lorg/json/JSONObject;

    .line 42
    return-void
.end method

.method public static declared-synchronized clearProperties()V
    .locals 3

    .prologue
    .line 147
    const-class v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    monitor-enter v1

    :try_start_0
    const-string v0, "ApplicationJsonProperties"

    const-string v2, "clearProperties"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v1

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getEmptyProperties()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .locals 6

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"dummy\":\"dummy\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    new-instance v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    new-instance v4, Lorg/json/JSONTokener;

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .local v2, "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    move-object v1, v2

    .line 127
    .end local v2    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-class v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 49
    const-class v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "usm.json"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .locals 18
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v15, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    monitor-enter v15

    :try_start_0
    sget-object v14, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mInstanceMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v14

    if-nez v14, :cond_9

    .line 55
    const/4 v13, 0x0

    .line 56
    .local v13, "tokener":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 57
    .local v4, "in":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 59
    .local v8, "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "externalState":Ljava/lang/String;
    const-string v14, "mounted"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "mounted_ro"

    .line 61
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 63
    .local v2, "externalDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v10, "propertiesFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    if-eqz v14, :cond_1

    .line 66
    :try_start_2
    const-string v14, "ApplicationJsonProperties"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "propertiesFile"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    const/4 v14, 0x1

    :try_start_3
    sput-boolean v14, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->readFromSDCard:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, v5

    .line 76
    .end local v2    # "externalDir":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v10    # "propertiesFile":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 79
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 81
    :cond_2
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 82
    .local v11, "reader":Ljava/io/BufferedReader;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v12, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 84
    .local v7, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 85
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 97
    .end local v3    # "externalState":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "tokener":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v14, "ApplicationJsonProperties"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getInstance Unable to parse JSON properties file!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    if-nez v8, :cond_3

    .line 101
    :try_start_6
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getEmptyProperties()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v8

    .line 102
    const-string v14, "ApplicationJsonProperties"

    const-string v16, "getInstance return emptyProperties"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 104
    :cond_3
    if-eqz v4, :cond_4

    .line 106
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :cond_4
    :goto_3
    monitor-exit v15

    return-object v8

    .line 69
    .restart local v2    # "externalDir":Ljava/io/File;
    .restart local v3    # "externalState":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .restart local v10    # "propertiesFile":Ljava/io/File;
    .restart local v13    # "tokener":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 71
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    const-string v14, "ApplicationJsonProperties"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "propertiesFile"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "externalDir":Ljava/io/File;
    .end local v3    # "externalState":Ljava/lang/String;
    .end local v10    # "propertiesFile":Ljava/io/File;
    .end local v13    # "tokener":Ljava/lang/Object;
    :catchall_0
    move-exception v14

    :goto_5
    if-nez v8, :cond_5

    .line 101
    :try_start_9
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getEmptyProperties()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v8

    .line 102
    const-string v14, "ApplicationJsonProperties"

    const-string v16, "getInstance return emptyProperties"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 104
    :cond_5
    if-eqz v4, :cond_4

    .line 106
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 107
    :catch_2
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 54
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :catchall_1
    move-exception v14

    monitor-exit v15

    throw v14

    .line 87
    .restart local v3    # "externalState":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v13    # "tokener":Ljava/lang/Object;
    :cond_6
    :try_start_c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "json":Ljava/lang/String;
    const-string v14, "ApplicationJsonProperties"

    invoke-static {v14, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v14, Lorg/json/JSONTokener;

    invoke-direct {v14, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v13

    .line 90
    if-eqz v13, :cond_8

    .line 91
    new-instance v9, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    check-cast v13, Lorg/json/JSONObject;

    .end local v13    # "tokener":Ljava/lang/Object;
    invoke-direct {v9, v13}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;-><init>(Lorg/json/JSONObject;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 92
    .end local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .local v9, "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :try_start_d
    invoke-static {v9}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->setupPropertiesSetting(Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;)V

    .line 93
    sget-object v14, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mInstanceMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object v8, v9

    .line 100
    .end local v9    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .restart local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :goto_6
    if-nez v8, :cond_7

    .line 101
    :try_start_e
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getEmptyProperties()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v8

    .line 102
    const-string v14, "ApplicationJsonProperties"

    const-string v16, "getInstance return emptyProperties"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 104
    :cond_7
    if-eqz v4, :cond_4

    .line 106
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_3

    .line 107
    :catch_3
    move-exception v1

    .line 108
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_3

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v13    # "tokener":Ljava/lang/Object;
    :cond_8
    :try_start_11
    const-string v14, "ApplicationJsonProperties"

    const-string v16, "getInstance Unable to initialize RadioProperties!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_6

    .line 107
    .end local v3    # "externalState":Ljava/lang/String;
    .end local v6    # "json":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "tokener":Ljava/lang/Object;
    .local v1, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :cond_9
    sget-object v14, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mInstanceMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object v8, v14

    goto/16 :goto_3

    .line 100
    .restart local v2    # "externalDir":Ljava/io/File;
    .restart local v3    # "externalState":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .restart local v10    # "propertiesFile":Ljava/io/File;
    .restart local v13    # "tokener":Ljava/lang/Object;
    :catchall_2
    move-exception v14

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_5

    .end local v2    # "externalDir":Ljava/io/File;
    .end local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .end local v10    # "propertiesFile":Ljava/io/File;
    .end local v13    # "tokener":Ljava/lang/Object;
    .restart local v6    # "json":Ljava/lang/String;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :catchall_3
    move-exception v14

    move-object v8, v9

    .end local v9    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .restart local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    goto :goto_5

    .line 97
    .end local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .restart local v9    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .restart local v8    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    goto/16 :goto_2

    .line 69
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "json":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "externalDir":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v10    # "propertiesFile":Ljava/io/File;
    .restart local v13    # "tokener":Ljava/lang/Object;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto/16 :goto_4
.end method

.method private static setupLogLevel(Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;)V
    .locals 3
    .param p0, "properties"    # Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    .prologue
    .line 158
    const-string v1, "loglevel"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "logLevel":I
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MLog;->setLogLevel(I)V

    .line 161
    return-void
.end method

.method private static setupPropertiesSetting(Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;)V
    .locals 0
    .param p0, "properties"    # Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    .prologue
    .line 152
    if-eqz p0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->setupLogLevel(Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;)V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
