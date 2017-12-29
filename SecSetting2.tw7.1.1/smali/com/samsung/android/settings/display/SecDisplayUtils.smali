.class public Lcom/samsung/android/settings/display/SecDisplayUtils;
.super Ljava/lang/Object;
.source "SecDisplayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDefaultScreenBrightnessMode(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 336
    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] backupDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v2, "display_pref"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 338
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "isBackupBrightnessMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "SCREEN_BRIGHTNESS_MODE"

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 340
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string/jumbo v2, "isBackupBrightnessMode"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    const/16 v4, 0x80

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] backupDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static getCurrentSeekbarIndex(Landroid/content/Context;)I
    .locals 13
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 204
    const-string/jumbo v5, "/efs/FactoryApp/poc_user"

    .line 205
    .local v5, "lFileName":Ljava/lang/String;
    const/4 v8, 0x3

    .line 208
    .local v8, "result":I
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v2, "eFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    if-eqz v10, :cond_1

    .line 211
    const/4 v3, 0x0

    .line 213
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_2
    const-string/jumbo v9, "3"

    .line 215
    .local v9, "valString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "readString":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 218
    const-string/jumbo v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 220
    .local v6, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 221
    const/4 v10, 0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "valString":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 222
    .restart local v9    # "valString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    .line 229
    .end local v6    # "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-eqz v4, :cond_1

    .line 231
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 242
    .end local v2    # "eFile":Ljava/io/File;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v7    # "readString":Ljava/lang/String;
    .end local v9    # "valString":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getCurrentSeekbarIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return v8

    .line 232
    .restart local v2    # "eFile":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "readString":Ljava/lang/String;
    .restart local v9    # "valString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v7    # "readString":Ljava/lang/String;
    .end local v9    # "valString":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 227
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    if-eqz v3, :cond_1

    .line 231
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 232
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 229
    :goto_2
    if-eqz v3, :cond_2

    .line 231
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 228
    :cond_2
    :goto_3
    :try_start_7
    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 238
    .end local v2    # "eFile":Ljava/io/File;
    :catch_3
    move-exception v1

    .line 239
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "eFile":Ljava/io/File;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 225
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static getPocEstimatedTime(Lcom/samsung/android/hardware/display/SemMdnieManager;)J
    .locals 10
    .param p0, "mdnie"    # Lcom/samsung/android/hardware/display/SemMdnieManager;

    .prologue
    const-wide/32 v8, 0x668a0

    const-wide/16 v6, 0x2710

    .line 286
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] check poc state"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdniePocFused(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v1

    .line 288
    .local v1, "bIsMdniePocFused":Z
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v2

    .line 289
    .local v2, "bIsMdniePocSupported":Z
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdnieFisrtUsed(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    .line 292
    .local v0, "bIsMdnieFisrtUsed":Z
    if-nez v2, :cond_1

    .line 293
    if-nez v0, :cond_0

    .line 294
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 3 - isMdnieFisrtUsed() false"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-wide v8

    .line 297
    :cond_0
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 3 - isMdnieFisrtUsed() true"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-wide v6

    .line 301
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 302
    if-nez v0, :cond_2

    .line 303
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 2 - isMdnieFisrtUsed() false"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-wide v8

    .line 307
    :cond_2
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 1 or case 2 - isMdnieFisrtUsed() true"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-wide v6
.end method

.method public static getPocFactoryDefaultIndex(Landroid/content/Context;)I
    .locals 13
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 114
    const-string/jumbo v5, "/efs/FactoryApp/poc_info"

    .line 115
    .local v5, "lFileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 118
    .local v7, "result":I
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "eFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    if-eqz v10, :cond_1

    .line 120
    const/4 v3, 0x0

    .line 122
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_2
    const-string/jumbo v9, "0"

    .line 124
    .local v9, "valString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "val":Ljava/lang/String;
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] get_poc_info : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 127
    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 128
    .local v6, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    .line 129
    const/4 v10, 0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "valString":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 130
    .restart local v9    # "valString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    .line 137
    .end local v6    # "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-eqz v4, :cond_1

    .line 139
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 150
    .end local v2    # "eFile":Ljava/io/File;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "valString":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getPocFactoryDefaultIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v10, 0x4

    if-gt v7, v10, :cond_2

    const/4 v10, -0x1

    if-ge v7, v10, :cond_3

    .line 152
    :cond_2
    const/4 v7, 0x0

    .line 153
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getPocFactoryDefaultIndex value correction : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_3
    return v7

    .line 140
    .restart local v2    # "eFile":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "val":Ljava/lang/String;
    .restart local v9    # "valString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "valString":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 134
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string/jumbo v10, "SecDisplayUtils"

    const-string/jumbo v11, "[stpoc] Exception in getPocFactoryDefaultIndex"

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    if-eqz v3, :cond_1

    .line 139
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 140
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 137
    :goto_2
    if-eqz v3, :cond_4

    .line 139
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 136
    :cond_4
    :goto_3
    :try_start_7
    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 146
    .end local v2    # "eFile":Ljava/io/File;
    :catch_3
    move-exception v1

    .line 147
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "eFile":Ljava/io/File;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 133
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static getPocPreview(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPocUserIndexTemp(Landroid/content/Context;)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 269
    const-string/jumbo v2, "sec_display_poc_index"

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 268
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 270
    .local v0, "index":I
    const-string/jumbo v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[stpoc] getPocUserIndexTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return v0
.end method

.method public static getUserPocValue(Landroid/content/Context;)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    .line 250
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v3

    .line 251
    .local v3, "pocFactoryIndex":I
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v2

    .line 253
    .local v2, "lseekBarindex":I
    rsub-int/lit8 v1, v3, 0x5

    .line 254
    .local v1, "lFactoryIndex":I
    const/4 v0, 0x0

    .line 256
    .local v0, "finalPos":I
    if-ge v2, v4, :cond_2

    rsub-int/lit8 v4, v2, 0x3

    sub-int v0, v1, v4

    .line 260
    :goto_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    const/4 v0, 0x1

    .line 261
    :cond_0
    const/4 v4, 0x6

    if-le v0, v4, :cond_1

    const/4 v0, 0x6

    .line 263
    :cond_1
    rsub-int/lit8 v4, v0, 0x5

    return v4

    .line 257
    :cond_2
    if-le v2, v4, :cond_3

    add-int/lit8 v4, v2, -0x3

    add-int v0, v1, v4

    goto :goto_0

    .line 258
    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isMdnieFisrtUsed(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .locals 3
    .param p0, "mdnie"    # Lcom/samsung/android/hardware/display/SemMdnieManager;

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "bIsMdnieFisrtUsed":Z
    const-string/jumbo v1, "SecDisplayUtils"

    const-string/jumbo v2, "[stpoc] isMdniePocSupported : false"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x0

    return v1
.end method

.method public static isMdniePocFused(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .locals 3
    .param p0, "mdnie"    # Lcom/samsung/android/hardware/display/SemMdnieManager;

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "bIsMdniePocFused":Z
    const-string/jumbo v1, "SecDisplayUtils"

    const-string/jumbo v2, "[stpoc] isMdniePocFused : false"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    return v1
.end method

.method public static isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .locals 3
    .param p0, "mdnie"    # Lcom/samsung/android/hardware/display/SemMdnieManager;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "bIsMdniePocSupported":Z
    const-string/jumbo v1, "SecDisplayUtils"

    const-string/jumbo v2, "[stpoc] isMdniePocSupported : false"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    return v1
.end method

.method public static isSupportPocSettings(Landroid/content/Context;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    .line 74
    const-string/jumbo v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_POC_COMPENSATION"

    .line 73
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "isSupportPocSettings false by feature"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v3, 0x0

    return v3

    .line 79
    :cond_0
    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "productName":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/settings/policy/SCPMHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/policy/SCPMHelper;-><init>(Landroid/content/Context;)V

    .line 81
    .local v2, "scpm":Lcom/samsung/android/settings/policy/SCPMHelper;
    const-string/jumbo v3, "edge_color_balance"

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/policy/SCPMHelper;->isSupportedMenu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 82
    .local v0, "isSupported":Z
    const-string/jumbo v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportPocSettings SCPMHelper : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v0
.end method

.method public static restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 357
    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] restoreDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v2, "display_pref"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 359
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "isBackupBrightnessMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    .line 361
    const-string/jumbo v4, "SCREEN_BRIGHTNESS_MODE"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 360
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 364
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "isBackupBrightnessMode"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] restoreDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setPocUserIndexTemp(Landroid/content/Context;I)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pocIndex"    # I

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "sec_display_poc_index"

    const/4 v2, 0x0

    .line 276
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 278
    const-string/jumbo v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] setPocUserIndexTemp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public static startReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;I)V
    .locals 3
    .param p0, "mdnie"    # Lcom/samsung/android/hardware/display/SemMdnieManager;
    .param p1, "index"    # I

    .prologue
    .line 372
    const-string/jumbo v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] start read poc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public static stopReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;)V
    .locals 2
    .param p0, "mdnie"    # Lcom/samsung/android/hardware/display/SemMdnieManager;

    .prologue
    .line 378
    const-string/jumbo v0, "SecDisplayUtils"

    const-string/jumbo v1, "[stpoc] stop read poc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method
