.class public Lcom/samsung/android/settings/WarrantyInfo;
.super Lcom/android/internal/app/AlertActivity;
.source "WarrantyInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private readCSCFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v5, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 98
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 99
    .local v8, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 101
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v9, v7, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .local v9, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 107
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 110
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 111
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    if-eqz v6, :cond_0

    .line 119
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_0
    if-eqz v8, :cond_1

    .line 122
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 124
    :cond_1
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 132
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    const/4 v12, 0x0

    return-object v12

    .line 109
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v12

    .line 118
    if-eqz v7, :cond_4

    .line 119
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_4
    if-eqz v9, :cond_5

    .line 122
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 124
    :cond_5
    if-eqz v1, :cond_6

    .line 125
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 109
    :cond_6
    :goto_3
    return-object v12

    .line 128
    :catch_1
    move-exception v3

    .line 129
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 114
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .local v8, "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    .line 115
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 118
    if-eqz v6, :cond_7

    .line 119
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_7
    if-eqz v8, :cond_8

    .line 122
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 124
    :cond_8
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 128
    :catch_3
    move-exception v3

    .line 129
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 112
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v4

    .line 113
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 118
    if-eqz v6, :cond_9

    .line 119
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_9
    if-eqz v8, :cond_a

    .line 122
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 124
    :cond_a
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_2

    .line 128
    :catch_5
    move-exception v3

    .line 129
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v3

    .line 129
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 116
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 118
    :goto_6
    if-eqz v6, :cond_b

    .line 119
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_b
    if-eqz v8, :cond_c

    .line 122
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 124
    :cond_c
    if-eqz v0, :cond_d

    .line 125
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 116
    :cond_d
    :goto_7
    throw v12

    .line 128
    :catch_7
    move-exception v3

    .line 129
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 116
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v12

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 110
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    .local v6, "fis":Ljava/io/FileInputStream;
    .local v8, "isr":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 112
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v4

    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v4

    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v4

    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 114
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "isr":Ljava/io/InputStreamReader;
    :catch_e
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_f
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_10
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 55
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "Option"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 56
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

    .line 58
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 59
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04032b

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 60
    .local v5, "view":Landroid/view/View;
    const v7, 0x7f110735

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 61
    .local v4, "tvForContents":Landroid/widget/TextView;
    const-string/jumbo v1, ""

    .line 62
    .local v1, "contentsText":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 64
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    packed-switch v6, :pswitch_data_0

    .line 89
    :goto_0
    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 90
    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->setupAlert()V

    .line 51
    return-void

    .line 66
    :pswitch_0
    const-string/jumbo v7, "system/serviceinfo/general_terms.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b051a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :pswitch_1
    const-string/jumbo v7, "system/serviceinfo/warranty_exceptions.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0516

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :pswitch_2
    const-string/jumbo v7, "system/serviceinfo/product_warranty.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0515

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :pswitch_3
    const-string/jumbo v7, "system/serviceinfo/contact_us.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b04cb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
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
    .line 137
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 136
    return-void
.end method
