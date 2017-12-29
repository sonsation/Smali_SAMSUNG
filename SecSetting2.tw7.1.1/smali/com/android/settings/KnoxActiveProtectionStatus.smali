.class public Lcom/android/settings/KnoxActiveProtectionStatus;
.super Ljava/lang/Object;
.source "KnoxActiveProtectionStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceTampered()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 174
    .local v0, "buffReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v6, "/dev/knox_kap"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    if-eqz v4, :cond_4

    .line 176
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    .local v1, "buffReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_3

    .line 178
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "outPut":Ljava/lang/String;
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDeviceTampered: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v5, :cond_3

    .line 181
    const-string/jumbo v6, "02"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "03"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-eqz v6, :cond_3

    .line 182
    :cond_0
    const/4 v6, 0x1

    .line 194
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 198
    :cond_1
    if-eqz v4, :cond_2

    .line 199
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 182
    :cond_2
    return v6

    .end local v5    # "outPut":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .line 194
    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    :cond_4
    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 198
    :cond_5
    if-eqz v4, :cond_6

    .line 199
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_6
    move-object v3, v4

    .line 202
    .end local v4    # "fileReader":Ljava/io/FileReader;
    :cond_7
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 191
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 192
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDeviceTampered failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    if-eqz v0, :cond_8

    .line 195
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 198
    :cond_8
    if-eqz v3, :cond_7

    .line 199
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_0

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 194
    :goto_2
    if-eqz v0, :cond_9

    .line 195
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 198
    :cond_9
    if-eqz v3, :cond_a

    .line 199
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 193
    :cond_a
    throw v6

    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 191
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public isKapDisablePending()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 107
    .local v0, "buffReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v6, "/dev/knox_kap"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    if-eqz v4, :cond_3

    .line 109
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .local v1, "buffReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_2

    .line 111
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "outPut":Ljava/lang/String;
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapDisablePending: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v5, :cond_2

    .line 114
    const-string/jumbo v6, "10"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-eqz v6, :cond_2

    .line 115
    const/4 v6, 0x1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 131
    :cond_0
    if-eqz v4, :cond_1

    .line 132
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 115
    :cond_1
    return v6

    .end local v5    # "outPut":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .line 127
    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    :cond_3
    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 131
    :cond_4
    if-eqz v4, :cond_5

    .line 132
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_5
    move-object v3, v4

    .line 135
    .end local v4    # "fileReader":Ljava/io/FileReader;
    :cond_6
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 124
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 125
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapDisablePending failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    if-eqz v0, :cond_7

    .line 128
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 131
    :cond_7
    if-eqz v3, :cond_6

    .line 132
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_0

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 127
    :goto_2
    if-eqz v0, :cond_8

    .line 128
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 131
    :cond_8
    if-eqz v3, :cond_9

    .line 132
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 126
    :cond_9
    throw v6

    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 124
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public isKapEnablePending()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 72
    .local v0, "buffReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v6, "/dev/knox_kap"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    if-eqz v4, :cond_3

    .line 74
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .local v1, "buffReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_2

    .line 76
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "outPut":Ljava/lang/String;
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapEnablePending: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz v5, :cond_2

    .line 79
    const-string/jumbo v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    const/4 v6, 0x1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 96
    :cond_0
    if-eqz v4, :cond_1

    .line 97
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 80
    :cond_1
    return v6

    .end local v5    # "outPut":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .line 92
    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    :cond_3
    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 96
    :cond_4
    if-eqz v4, :cond_5

    .line 97
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_5
    move-object v3, v4

    .line 100
    .end local v4    # "fileReader":Ljava/io/FileReader;
    :cond_6
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 89
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 90
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapEnablePending failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 96
    :cond_7
    if-eqz v3, :cond_6

    .line 97
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_0

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 92
    :goto_2
    if-eqz v0, :cond_8

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 96
    :cond_8
    if-eqz v3, :cond_9

    .line 97
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 91
    :cond_9
    throw v6

    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 89
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public isKapEnabled()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 37
    .local v0, "buffReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v6, "/dev/knox_kap"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    if-eqz v4, :cond_3

    .line 39
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .local v1, "buffReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_2

    .line 41
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "outPut":Ljava/lang/String;
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v5, :cond_2

    .line 44
    const-string/jumbo v6, "11"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    const/4 v6, 0x1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 61
    :cond_0
    if-eqz v4, :cond_1

    .line 62
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 45
    :cond_1
    return v6

    .end local v5    # "outPut":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .line 57
    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    :cond_3
    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 61
    :cond_4
    if-eqz v4, :cond_5

    .line 62
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_5
    move-object v3, v4

    .line 65
    .end local v4    # "fileReader":Ljava/io/FileReader;
    :cond_6
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 54
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 55
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapEnabled failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    if-eqz v0, :cond_7

    .line 58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 61
    :cond_7
    if-eqz v3, :cond_6

    .line 62
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_0

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 57
    :goto_2
    if-eqz v0, :cond_8

    .line 58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 61
    :cond_8
    if-eqz v3, :cond_9

    .line 62
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 56
    :cond_9
    throw v6

    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 54
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public isKapEnforced()Z
    .locals 6

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, "ret":Z
    const-string/jumbo v3, "tima"

    .line 156
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    .line 159
    .local v1, "mTimaService":Landroid/service/tima/ITimaService;
    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    invoke-interface {v1}, Landroid/service/tima/ITimaService;->isKapEnforced()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 167
    .end local v2    # "ret":Z
    :cond_0
    :goto_0
    return v2

    .line 162
    .restart local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "KnoxActiveProtectionStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKapEnforced : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKapEnabled(ZZ)V
    .locals 5
    .param p1, "isEnabled"    # Z
    .param p2, "reboot"    # Z

    .prologue
    .line 140
    const-string/jumbo v2, "tima"

    .line 139
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    .line 142
    .local v1, "mTimaService":Landroid/service/tima/ITimaService;
    if-eqz v1, :cond_0

    .line 144
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/service/tima/ITimaService;->setKapMode(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KnoxActiveProtectionStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setKapEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
