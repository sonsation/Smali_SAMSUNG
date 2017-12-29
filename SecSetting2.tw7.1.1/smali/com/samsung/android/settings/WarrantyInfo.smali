.class public Lcom/samsung/android/settings/WarrantyInfo;
.super Lcom/android/internal/app/AlertActivity;
.source "WarrantyInfo.java"


# instance fields
.field private FILE_PATH_CONTACT_US:Ljava/lang/String;

.field private FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

.field private FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

.field private FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_CONTACT_US:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sFileName"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string/jumbo v3, "persist.sys.omc_etcpath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "omcEtcPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 164
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/system/serviceinfo/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/system/serviceinfo/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .end local v2    # "ret":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v3, "WarrantyInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "take WarrantyInfo from : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_1
    return-object v2

    .line 166
    .restart local v2    # "ret":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/system/etc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/system/etc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "ret":Ljava/lang/String;
    goto :goto_0

    .line 168
    .local v2, "ret":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 172
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WarrantyInfo"

    const-string/jumbo v4, "fail to find a file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readCSCFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v7, 0x0

    .line 112
    .local v7, "file":Ljava/io/File;
    const/4 v9, 0x0

    .line 113
    .local v9, "fis":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 114
    .local v11, "isr":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 116
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v7    # "file":Ljava/io/File;
    .local v8, "file":Ljava/io/File;
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v12, Ljava/io/InputStreamReader;

    .end local v9    # "fis":Ljava/io/FileInputStream;
    const-string/jumbo v15, "UTF-8"

    invoke-direct {v12, v10, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    .local v12, "isr":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    .end local v11    # "isr":Ljava/io/InputStreamReader;
    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_18
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 120
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v14, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 123
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_19
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    .line 126
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/FileNotFoundException;
    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .local v11, "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 127
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    if-eqz v9, :cond_0

    .line 137
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 139
    :cond_0
    if-eqz v11, :cond_1

    .line 140
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 142
    :cond_1
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 150
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    const/4 v15, 0x0

    return-object v15

    .line 125
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_19
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v15

    .line 136
    if-eqz v10, :cond_4

    .line 137
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 139
    :cond_4
    if-eqz v12, :cond_5

    .line 140
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V

    .line 142
    :cond_5
    if-eqz v2, :cond_6

    .line 143
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 125
    :cond_6
    :goto_3
    return-object v15

    .line 146
    :catch_1
    move-exception v4

    .line 147
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 132
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "file":Ljava/io/File;
    .local v9, "fis":Ljava/io/FileInputStream;
    .local v11, "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v6

    .line 133
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .local v6, "e":Ljava/lang/NullPointerException;
    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 136
    if-eqz v9, :cond_7

    .line 137
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 139
    :cond_7
    if-eqz v11, :cond_8

    .line 140
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 142
    :cond_8
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 146
    :catch_3
    move-exception v4

    .line 147
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 130
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v4

    .line 131
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 136
    if-eqz v9, :cond_9

    .line 137
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 139
    :cond_9
    if-eqz v11, :cond_a

    .line 140
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 142
    :cond_a
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_2

    .line 146
    :catch_5
    move-exception v4

    .line 147
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v5

    .line 129
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    :goto_6
    :try_start_d
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 136
    if-eqz v9, :cond_b

    .line 137
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 139
    :cond_b
    if-eqz v11, :cond_c

    .line 140
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 142
    :cond_c
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_2

    .line 146
    :catch_7
    move-exception v4

    .line 147
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 146
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v4

    .line 147
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 134
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 136
    :goto_7
    if-eqz v9, :cond_d

    .line 137
    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 139
    :cond_d
    if-eqz v11, :cond_e

    .line 140
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 142
    :cond_e
    if-eqz v1, :cond_f

    .line 143
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 134
    :cond_f
    :goto_8
    throw v15

    .line 146
    :catch_9
    move-exception v4

    .line 147
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 134
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .local v7, "file":Ljava/io/File;
    goto :goto_7

    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v15

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto :goto_7

    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v15

    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .local v11, "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto :goto_7

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v15

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto :goto_7

    .line 126
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    .local v7, "file":Ljava/io/File;
    .local v9, "fis":Ljava/io/FileInputStream;
    .local v11, "isr":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    :catch_b
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .local v7, "file":Ljava/io/File;
    goto/16 :goto_1

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_c
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_1

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .local v11, "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_1

    .line 128
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .local v9, "fis":Ljava/io/FileInputStream;
    .local v11, "isr":Ljava/io/InputStreamReader;
    :catch_e
    move-exception v5

    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto :goto_6

    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_f
    move-exception v5

    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto :goto_6

    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    :catch_10
    move-exception v5

    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .local v11, "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto :goto_6

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    :catch_11
    move-exception v5

    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto :goto_6

    .line 130
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "file":Ljava/io/File;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "file":Ljava/io/File;
    .local v9, "fis":Ljava/io/FileInputStream;
    .local v11, "isr":Ljava/io/InputStreamReader;
    :catch_12
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_5

    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_13
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_5

    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    :catch_14
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .local v11, "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_5

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    :catch_15
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_5

    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "file":Ljava/io/File;
    .local v9, "fis":Ljava/io/FileInputStream;
    .local v11, "isr":Ljava/io/InputStreamReader;
    :catch_16
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NullPointerException;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_17
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NullPointerException;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    :catch_18
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NullPointerException;
    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .local v11, "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    :catch_19
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NullPointerException;
    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 65
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "Option"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 66
    .local v6, "warrantyInfoOption":I
    const-string/jumbo v7, "WarrantyInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "option "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 69
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04037c

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 70
    .local v5, "view":Landroid/view/View;
    const v7, 0x7f11087f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 71
    .local v4, "tvForContents":Landroid/widget/TextView;
    const-string/jumbo v1, ""

    .line 72
    .local v1, "contentsText":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 74
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string/jumbo v7, "general_terms.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    .line 75
    const-string/jumbo v7, "warranty_exceptions.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    .line 76
    const-string/jumbo v7, "product_warranty.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    .line 77
    const-string/jumbo v7, "contact_us.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_CONTACT_US:Ljava/lang/String;

    .line 79
    packed-switch v6, :pswitch_data_0

    .line 104
    :goto_0
    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 105
    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->setupAlert()V

    .line 61
    return-void

    .line 81
    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0618

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0614

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0613

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object v7, p0, Lcom/samsung/android/settings/WarrantyInfo;->FILE_PATH_CONTACT_US:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b05c5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 154
    return-void
.end method
