.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarSystemUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateLongpressGesture(Z)V
    .locals 8
    .param p0, "bEnable"    # Z

    .prologue
    .line 156
    const/4 v4, 0x0

    .line 158
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .local v5, "fos":Ljava/io/OutputStream;
    if-eqz p0, :cond_3

    .line 164
    .end local v4    # "fos":Ljava/io/OutputStream;
    :try_start_1
    const-string v6, "set_longpress_enable,0"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 168
    :goto_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    if-eqz v5, :cond_0

    .line 176
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v4, v5

    .line 155
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :cond_1
    :goto_2
    return-void

    .line 160
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :cond_2
    return-void

    .line 166
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :cond_3
    :try_start_3
    const-string v6, "set_longpress_enable,1"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 170
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    if-eqz v4, :cond_1

    .line 176
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 178
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 172
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    if-eqz v4, :cond_1

    .line 176
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 178
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 173
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 175
    :goto_5
    if-eqz v4, :cond_4

    .line 176
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 173
    :cond_4
    :goto_6
    throw v6

    .line 178
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_5

    .line 169
    .end local v3    # "file":Ljava/io/File;
    .local v4, "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 171
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method public static updateSysfsBarLength(I)V
    .locals 10
    .param p0, "barLength"    # I

    .prologue
    .line 210
    if-ltz p0, :cond_0

    const/16 v7, 0xa0

    if-le p0, v7, :cond_1

    .line 211
    :cond_0
    return-void

    .line 213
    :cond_1
    const/4 v5, 0x0

    .line 215
    .local v5, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 219
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .local v6, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v0, Ljava/lang/String;

    .end local v5    # "fos":Ljava/io/OutputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set_sidescreen_x_length,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "command":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 222
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 223
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSysfsBarLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    if-eqz v6, :cond_2

    .line 231
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v5, v6

    .line 209
    .end local v0    # "command":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/OutputStream;
    :cond_3
    :goto_1
    return-void

    .line 217
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :cond_4
    return-void

    .line 233
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v6    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 226
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 227
    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    if-eqz v5, :cond_3

    .line 231
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 233
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 225
    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    if-eqz v5, :cond_3

    .line 231
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 233
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 228
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 230
    :goto_4
    if-eqz v5, :cond_5

    .line 231
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 228
    :cond_5
    :goto_5
    throw v7

    .line 233
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 228
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/OutputStream;
    .local v5, "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 224
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v6    # "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 226
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v6    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static updateSysfsDeadZone(I)V
    .locals 10
    .param p0, "deadzone"    # I

    .prologue
    .line 184
    const/4 v5, 0x0

    .line 186
    .local v5, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 190
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .local v6, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v0, Ljava/lang/String;

    .end local v5    # "fos":Ljava/io/OutputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set_dead_zone,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "command":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 193
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 194
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSysfsDeadZone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    if-eqz v6, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v5, v6

    .line 183
    .end local v0    # "command":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/OutputStream;
    :cond_1
    :goto_1
    return-void

    .line 188
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :cond_2
    return-void

    .line 204
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v6    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 197
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 198
    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    if-eqz v5, :cond_1

    .line 202
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 204
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 195
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 196
    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 201
    if-eqz v5, :cond_1

    .line 202
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 204
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 199
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 201
    :goto_4
    if-eqz v5, :cond_3

    .line 202
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 199
    :cond_3
    :goto_5
    throw v7

    .line 204
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 199
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/OutputStream;
    .local v5, "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 195
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v6    # "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 197
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v6    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static updateSysfsGripDisable(Z)V
    .locals 9
    .param p0, "bDisable"    # Z

    .prologue
    .line 239
    const/4 v4, 0x0

    .line 241
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSysfsGripDisable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .local v5, "fos":Ljava/io/OutputStream;
    if-eqz p0, :cond_3

    .line 249
    .end local v4    # "fos":Ljava/io/OutputStream;
    :try_start_1
    const-string v6, "set_grip_detection,0"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 253
    :goto_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    if-eqz v5, :cond_0

    .line 261
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v4, v5

    .line 238
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :cond_1
    :goto_2
    return-void

    .line 243
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "updateSysfsGripDisable : file did not exists or canWrite"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    return-void

    .line 251
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :cond_3
    :try_start_4
    const-string v6, "set_grip_detection,1"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 255
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    if-eqz v4, :cond_1

    .line 261
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 263
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 256
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 257
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 260
    if-eqz v4, :cond_1

    .line 261
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 263
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 260
    :goto_5
    if-eqz v4, :cond_4

    .line 261
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 258
    :cond_4
    :goto_6
    throw v6

    .line 263
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 258
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_5

    .line 254
    .end local v3    # "file":Ljava/io/File;
    .local v4, "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 256
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method public static updateWakeupArea(I)V
    .locals 8
    .param p0, "area"    # I

    .prologue
    .line 126
    const/4 v4, 0x0

    .line 128
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v5, "fos":Ljava/io/OutputStream;
    const/4 v6, 0x1

    if-ne p0, v6, :cond_3

    .line 135
    .end local v4    # "fos":Ljava/io/OutputStream;
    :try_start_1
    const-string v6, "select_wakeful_edge,0"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 140
    :goto_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    if-eqz v5, :cond_0

    .line 148
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v4, v5

    .line 125
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :cond_1
    :goto_2
    return-void

    .line 130
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :cond_2
    return-void

    .line 138
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :cond_3
    :try_start_3
    const-string v6, "select_wakeful_edge,1"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 142
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    if-eqz v4, :cond_1

    .line 148
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 150
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 143
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 144
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 147
    if-eqz v4, :cond_1

    .line 148
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 150
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 147
    :goto_5
    if-eqz v4, :cond_4

    .line 148
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 145
    :cond_4
    :goto_6
    throw v6

    .line 150
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 145
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_5

    .line 141
    .end local v3    # "file":Ljava/io/File;
    .local v4, "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 143
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method public static updateWakeupGesture(Landroid/content/Context;IZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 91
    const-string v7, "power"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 92
    .local v6, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 93
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string v8, "updateWakeupGesture: factory binary"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 96
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    const/4 v4, 0x0

    .line 99
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 103
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .local v5, "fos":Ljava/io/OutputStream;
    if-eqz p2, :cond_3

    .line 105
    .end local v4    # "fos":Ljava/io/OutputStream;
    :try_start_1
    const-string v7, "second_screen_enable,1"

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 109
    :goto_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-eqz v5, :cond_1

    .line 117
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :cond_1
    :goto_1
    return-void

    .line 101
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :cond_2
    return-void

    .line 107
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :cond_3
    :try_start_3
    const-string v7, "second_screen_enable,0"

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 111
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    if-eqz v4, :cond_1

    .line 117
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 119
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 112
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 113
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    if-eqz v4, :cond_1

    .line 117
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 119
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 116
    :goto_4
    if-eqz v4, :cond_4

    .line 117
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 114
    :cond_4
    :goto_5
    throw v7

    .line 119
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 110
    .end local v3    # "file":Ljava/io/File;
    .local v4, "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 112
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_3
.end method
