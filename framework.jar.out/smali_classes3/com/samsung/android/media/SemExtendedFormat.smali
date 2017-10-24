.class public Lcom/samsung/android/media/SemExtendedFormat;
.super Ljava/lang/Object;
.source "SemExtendedFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;,
        Lcom/samsung/android/media/SemExtendedFormat$DataPosition;,
        Lcom/samsung/android/media/SemExtendedFormat$DataType;,
        Lcom/samsung/android/media/SemExtendedFormat$KeyName;,
        Lcom/samsung/android/media/SemExtendedFormat$Options;,
        Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SEF_VERSION:Ljava/lang/String; = "1.03"

.field private static final TAG:Ljava/lang/String; = "SemExtendedFormat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    .locals 16
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 1213
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 1219
    .local v7, "dataFileName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1220
    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const/4 v3, 0x0

    return v3

    .line 1224
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 1225
    :cond_2
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid key name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/4 v3, 0x0

    return v3

    .line 1229
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    .line 1230
    :cond_4
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid SEF Data File name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v3, 0x0

    return v3

    .line 1235
    :cond_5
    const/16 v3, 0x800

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 1236
    const/4 v13, -0x1

    .line 1237
    .local v13, "ret":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_7

    .line 1238
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v10, v3, [B

    .line 1239
    .local v10, "data":[B
    const/4 v14, 0x0

    .line 1241
    .local v14, "wav_byte":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    .end local v14    # "wav_byte":Ljava/io/FileInputStream;
    .local v15, "wav_byte":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v15, v10}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1248
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1254
    :goto_0
    invoke-static {v2, v10}, Lcom/samsung/android/media/SemExtendedFormat;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v3

    return v3

    .line 1249
    :catch_0
    move-exception v11

    .line 1250
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1243
    .end local v11    # "e":Ljava/io/IOException;
    .end local v15    # "wav_byte":Ljava/io/FileInputStream;
    .restart local v14    # "wav_byte":Ljava/io/FileInputStream;
    :catch_1
    move-exception v12

    .line 1244
    .end local v14    # "wav_byte":Ljava/io/FileInputStream;
    .local v12, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v13, 0x0

    .line 1245
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1248
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1252
    :goto_2
    return v13

    .line 1249
    :catch_2
    move-exception v11

    .line 1250
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1246
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1248
    :goto_3
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1252
    :goto_4
    if-nez v13, :cond_6

    return v13

    .line 1249
    :catch_3
    move-exception v11

    .line 1250
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 1246
    .end local v11    # "e":Ljava/io/IOException;
    :cond_6
    throw v3

    .line 1256
    .end local v10    # "data":[B
    :cond_7
    const/4 v3, 0x0

    return v3

    .line 1261
    .end local v13    # "ret":I
    :cond_8
    const/16 v3, 0x100

    move/from16 v0, p4

    if-ne v0, v3, :cond_9

    .line 1262
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1263
    const/4 v9, 0x0

    move-object/from16 v3, p1

    move/from16 v8, p3

    .line 1262
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v3

    return v3

    .line 1264
    :cond_9
    const/16 v3, 0x1000

    move/from16 v0, p4

    if-ne v0, v3, :cond_a

    .line 1265
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1266
    const/4 v9, 0x1

    move-object/from16 v3, p1

    move/from16 v8, p3

    .line 1265
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v3

    return v3

    .line 1268
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v3

    return v3

    .line 1246
    .restart local v10    # "data":[B
    .restart local v13    # "ret":I
    .restart local v15    # "wav_byte":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v14, v15

    .end local v15    # "wav_byte":Ljava/io/FileInputStream;
    .local v14, "wav_byte":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1243
    .end local v14    # "wav_byte":Ljava/io/FileInputStream;
    .restart local v15    # "wav_byte":Ljava/io/FileInputStream;
    :catch_4
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    move-object v14, v15

    .end local v15    # "wav_byte":Ljava/io/FileInputStream;
    .restart local v14    # "wav_byte":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;[BII)I
    .locals 9
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1164
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1171
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return v4

    .line 1174
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1175
    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return v4

    .line 1178
    :cond_3
    if-eqz p2, :cond_4

    array-length v1, p2

    if-gtz v1, :cond_5

    .line 1179
    :cond_4
    const-string/jumbo v1, "SemExtendedFormat"

    const-string/jumbo v2, "Invalid data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return v4

    .line 1184
    :cond_5
    const/16 v1, 0x800

    if-ne p3, v1, :cond_6

    .line 1185
    invoke-static {v0, p2}, Lcom/samsung/android/media/SemExtendedFormat;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v1

    return v1

    .line 1188
    :cond_6
    const/16 v1, 0x100

    if-ne p4, v1, :cond_7

    .line 1189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1190
    array-length v6, p2

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move v8, v4

    .line 1189
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    .line 1191
    :cond_7
    const/16 v1, 0x1000

    if-ne p4, v1, :cond_8

    .line 1192
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1193
    array-length v6, p2

    const/4 v8, 0x1

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    .line 1192
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    .line 1195
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1196
    array-length v6, p2

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .line 1195
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1541
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1565
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1566
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    return v4

    .line 1570
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1571
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return v4

    .line 1575
    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    .line 1576
    :cond_4
    const-string/jumbo v0, "SemExtendedFormat"

    const-string/jumbo v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return v4

    .line 1580
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    .line 1581
    :goto_0
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    .line 1580
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v0

    return v0

    :cond_6
    array-length v4, p3

    goto :goto_0
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1599
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1623
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1624
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return v4

    .line 1628
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1629
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return v4

    .line 1633
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 1634
    :cond_4
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return v4

    .line 1638
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v0

    return v0

    :cond_6
    array-length v4, p3

    goto :goto_0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1353
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I
    .locals 8
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1370
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1371
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 1377
    .local v5, "dataFileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1378
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return v7

    .line 1382
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1383
    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    return v7

    .line 1387
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 1388
    :cond_4
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid SEF Data File name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return v7

    .line 1392
    :cond_5
    const/16 v1, 0x10

    if-ne p5, v1, :cond_7

    .line 1393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    move v4, v7

    :goto_0
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v1

    return v1

    :cond_6
    array-length v4, p3

    goto :goto_0

    .line 1395
    :cond_7
    const/16 v1, 0x100

    if-ne p5, v1, :cond_9

    .line 1396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    move v4, v7

    :goto_1
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v1

    return v1

    :cond_8
    array-length v4, p3

    goto :goto_1

    .line 1398
    :cond_9
    const/16 v1, 0x1000

    if-ne p5, v1, :cond_b

    .line 1399
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_a

    move v4, v7

    .line 1400
    :goto_2
    const/4 v7, 0x1

    move-object v1, p1

    move-object v3, p3

    move v6, p4

    .line 1399
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v1

    return v1

    :cond_a
    array-length v4, p3

    goto :goto_2

    .line 1402
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_c

    move v4, v7

    :goto_3
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v1

    return v1

    :cond_c
    array-length v4, p3

    goto :goto_3
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1289
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1306
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1313
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return v8

    .line 1316
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1317
    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return v8

    .line 1320
    :cond_3
    if-eqz p2, :cond_4

    array-length v1, p2

    if-gtz v1, :cond_5

    .line 1321
    :cond_4
    const-string/jumbo v1, "SemExtendedFormat"

    const-string/jumbo v2, "Invalid data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return v8

    .line 1325
    :cond_5
    const/16 v1, 0x10

    if-ne p5, v1, :cond_7

    .line 1326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    move v4, v8

    .line 1327
    :goto_0
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    .line 1326
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_6
    array-length v4, p3

    goto :goto_0

    .line 1328
    :cond_7
    const/16 v1, 0x100

    if-ne p5, v1, :cond_9

    .line 1329
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    move v4, v8

    .line 1330
    :goto_1
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    .line 1329
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_8
    array-length v4, p3

    goto :goto_1

    .line 1331
    :cond_9
    const/16 v1, 0x1000

    if-ne p5, v1, :cond_b

    .line 1332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_a

    move v4, v8

    .line 1333
    :goto_2
    array-length v6, p2

    const/4 v8, 0x1

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    .line 1332
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_a
    array-length v4, p3

    goto :goto_2

    .line 1335
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_c

    move v4, v8

    .line 1336
    :goto_3
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    .line 1335
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_c
    array-length v4, p3

    goto :goto_3
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1423
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1446
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1447
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    return v4

    .line 1450
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1451
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    return v4

    .line 1454
    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    .line 1455
    :cond_4
    const-string/jumbo v0, "SemExtendedFormat"

    const-string/jumbo v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    return v4

    .line 1459
    :cond_5
    const/16 v0, 0x10

    if-ne p5, v0, :cond_7

    .line 1460
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    .line 1461
    :goto_0
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    .line 1460
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v0

    return v0

    :cond_6
    array-length v4, p3

    goto :goto_0

    .line 1463
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    .line 1464
    :goto_1
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    .line 1463
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v0

    return v0

    :cond_8
    array-length v4, p3

    goto :goto_1
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1483
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1507
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1508
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    return v4

    .line 1512
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1513
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    return v4

    .line 1517
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 1518
    :cond_4
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    return v4

    .line 1522
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v0

    return v0

    :cond_6
    array-length v4, p3

    goto :goto_0
.end method

.method public static addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyNames"    # [Ljava/lang/String;
    .param p2, "dataFileNames"    # [Ljava/lang/String;
    .param p3, "dataTypes"    # [I
    .param p4, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1660
    array-length v6, p1

    .line 1661
    .local v6, "dataCount":I
    array-length v0, p2

    if-eq v6, v0, :cond_2

    .line 1662
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", dataFileNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1668
    :cond_1
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    return v4

    .line 1663
    :cond_2
    array-length v0, p3

    if-eq v6, v0, :cond_0

    .line 1664
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", dataTypes data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1672
    :cond_3
    array-length v0, p1

    new-array v2, v0, [I

    .line 1673
    .local v2, "keynamesLength":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 1674
    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, v2, v7

    .line 1673
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1677
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[III)I

    move-result v0

    return v0
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3350
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3351
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    return-object v3

    .line 3355
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;

    move-result-object v0

    return-object v0
.end method

.method public static clearAudioData(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3281
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3282
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    return v3

    .line 3286
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static clearFastSEFData(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1964
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1965
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    return v3

    .line 1968
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static clearQdioData(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3304
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3305
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    return v3

    .line 3309
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static clearSEFData(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1944
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1945
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return v3

    .line 1948
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compact(Ljava/io/File;)Z
    .locals 2
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1982
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1987
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v1, "Invalid_Data"

    invoke-static {p0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1988
    const/4 v1, 0x1

    return v1

    .line 1990
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static convertImageToMP4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 3522
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3523
    .local v1, "sefFile":Ljava/io/File;
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->getMajorDataType(Ljava/lang/String;)I

    move-result v3

    .line 3525
    .local v3, "type":I
    sparse-switch v3, :sswitch_data_0

    .line 3548
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "This type of file is not yet supported. type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    .end local v1    # "sefFile":Ljava/io/File;
    .end local v3    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 3527
    .restart local v1    # "sefFile":Ljava/io/File;
    .restart local v3    # "type":I
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/media/InteractivePanoramaConverter;->getInstance()Lcom/samsung/android/media/InteractivePanoramaConverter;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/samsung/android/media/InteractivePanoramaConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3551
    .end local v1    # "sefFile":Ljava/io/File;
    .end local v3    # "type":I
    :catch_0
    move-exception v0

    .line 3553
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3530
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "sefFile":Ljava/io/File;
    .restart local v3    # "type":I
    :sswitch_1
    const/16 v4, 0x8e1

    :try_start_1
    invoke-static {v1, v4}, Lcom/samsung/android/media/SemExtendedFormat;->hasSEFData(Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3531
    invoke-static {}, Lcom/samsung/android/media/MotionPanoramaConverter;->getInstance()Lcom/samsung/android/media/MotionPanoramaConverter;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/samsung/android/media/MotionPanoramaConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3535
    :sswitch_2
    invoke-static {}, Lcom/samsung/android/media/MotionPhotoConverter;->getInstance()Lcom/samsung/android/media/MotionPhotoConverter;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/samsung/android/media/MotionPhotoConverter;->convertToMp4(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3538
    :sswitch_3
    const/16 v4, 0x971

    invoke-static {v1, v4}, Lcom/samsung/android/media/SemExtendedFormat;->hasSEFData(Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3539
    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->getInstance()Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3544
    :sswitch_4
    new-instance v2, Lcom/samsung/android/transcode/EncodeSoundNShot;

    const/4 v4, 0x5

    invoke-direct {v2, p1, v4, p0}, Lcom/samsung/android/transcode/EncodeSoundNShot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3545
    .local v2, "soundNShot":Lcom/samsung/android/transcode/EncodeSoundNShot;
    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/Encode;->encode()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3525
    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_4
        0x8d0 -> :sswitch_0
        0x8e0 -> :sswitch_1
        0x970 -> :sswitch_3
        0xa30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3473
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3474
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid src file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    return v3

    .line 3478
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 3479
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dst file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    return v3

    .line 3483
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static copyAllData(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2922
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 2923
    .local v1, "srcFileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2929
    .local v0, "dstFileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2930
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid src file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    return v5

    .line 2934
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2935
    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid dst file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    return v5

    .line 2939
    :cond_3
    invoke-static {v1, v0}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static copyAllSEFData(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2954
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 2955
    .local v1, "srcFileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2961
    .local v0, "dstFileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2962
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid src file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    return v5

    .line 2966
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2967
    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid dst file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    return v5

    .line 2971
    :cond_3
    invoke-static {v1, v0}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2990
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2991
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid src file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    return v3

    .line 2995
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2996
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dst file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    return v3

    .line 3000
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static copyAudioData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3444
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3445
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid src file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    return v3

    .line 3449
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 3450
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dst file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    return v3

    .line 3454
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static deleteAllData(Ljava/io/File;)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1730
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1736
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return v4

    .line 1741
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1742
    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->DeleteQdioFromFile(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1743
    return v2

    .line 1745
    :cond_2
    return v4

    .line 1750
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1751
    return v2

    .line 1753
    :cond_4
    return v4
.end method

.method public static deleteAllSEFData(Ljava/io/File;)Z
    .locals 1
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1881
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteAllSEFData(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static deleteAllSEFData(Ljava/io/File;I)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1894
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1899
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1900
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    return v4

    .line 1905
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1906
    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->DeleteQdioFromFile(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1907
    return v2

    .line 1909
    :cond_2
    return v4

    .line 1914
    :cond_3
    const/16 v1, 0x10

    if-ne p1, v1, :cond_5

    .line 1915
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1916
    return v2

    .line 1918
    :cond_4
    return v4

    .line 1921
    :cond_5
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 1922
    return v2

    .line 1924
    :cond_6
    return v4
.end method

.method public static deleteAudioData(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3234
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3235
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    return v3

    .line 3239
    :cond_1
    const-string/jumbo v0, "SoundShot_000"

    const-string/jumbo v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/media/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static deleteData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1699
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1704
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1705
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    return v4

    .line 1709
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1710
    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    return v4

    .line 1714
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1715
    return v2

    .line 1717
    :cond_4
    return v4
.end method

.method public static deleteFastSEFData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1855
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1856
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return v3

    .line 1860
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1861
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    return v3

    .line 1865
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1866
    return v1

    .line 1868
    :cond_4
    return v3
.end method

.method public static deleteQdioData(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3258
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3259
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    return v3

    .line 3263
    :cond_1
    const-string/jumbo v0, "SoundShot_000"

    const-string/jumbo v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/media/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static deleteSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1829
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1830
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    return v3

    .line 1834
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1835
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    return v3

    .line 1839
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1769
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1783
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1788
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1789
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    return v4

    .line 1793
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1794
    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    return v4

    .line 1798
    :cond_3
    const/16 v1, 0x10

    if-ne p2, v1, :cond_5

    .line 1799
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1800
    return v2

    .line 1802
    :cond_4
    return v4

    .line 1805
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 1806
    return v2

    .line 1808
    :cond_6
    return v4
.end method

.method public static getAudioDataInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3327
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3328
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    return-object v3

    .line 3332
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->getAudioDataInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;I)[B
    .locals 1
    .param p0, "qdioJpegData"    # Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3372
    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B
    .locals 1
    .param p0, "qdioJpegData"    # Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3392
    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getData(Ljava/io/File;Ljava/lang/String;)[B
    .locals 19
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2055
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 2060
    .local v6, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_1

    .line 2061
    :cond_0
    const-string/jumbo v16, "SemExtendedFormat"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Invalid file name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    const/16 v16, 0x0

    return-object v16

    .line 2065
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_3

    .line 2066
    :cond_2
    const-string/jumbo v16, "SemExtendedFormat"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Invalid key name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const/16 v16, 0x0

    return-object v16

    .line 2070
    :cond_3
    const/4 v11, 0x0

    .line 2071
    .local v11, "sefData":[B
    const/4 v7, 0x0

    .line 2074
    .local v7, "fis":Ljava/io/FileInputStream;
    invoke-static {v6}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_4

    invoke-static {v6}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 2075
    invoke-static {v6}, Lcom/samsung/android/media/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;

    move-result-object v10

    .line 2077
    .local v10, "qdioJpegData":Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/samsung/android/media/QdioJNI;->getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B

    move-result-object v11

    .line 2078
    .local v11, "sefData":[B
    return-object v11

    .line 2083
    .end local v10    # "qdioJpegData":Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    .local v11, "sefData":[B
    :cond_4
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;

    move-result-object v2

    .line 2085
    .local v2, "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;
    if-nez v2, :cond_6

    .line 2086
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2087
    const/16 v16, 0x0

    .line 2116
    if-eqz v8, :cond_5

    .line 2117
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2087
    :cond_5
    return-object v16

    .line 2090
    :cond_6
    :try_start_2
    iget-wide v14, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->offset:J

    .line 2091
    .local v14, "startOffset":J
    iget-wide v0, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 2097
    .local v4, "endOffset":J
    iget-wide v0, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v11, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2098
    .local v11, "sefData":[B
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_8

    .line 2099
    const/16 v16, 0x0

    .line 2116
    if-eqz v8, :cond_7

    .line 2117
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2099
    :cond_7
    return-object v16

    .line 2101
    :cond_8
    :try_start_3
    invoke-virtual {v8, v14, v15}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    .line 2102
    .local v12, "skipCheck":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_a

    .line 2103
    const/16 v16, 0x0

    .line 2116
    if-eqz v8, :cond_9

    .line 2117
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2103
    :cond_9
    return-object v16

    .line 2108
    :cond_a
    :try_start_4
    invoke-virtual {v8, v11}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    .line 2109
    .local v9, "length":I
    if-nez v9, :cond_c

    .line 2110
    const/16 v16, 0x0

    .line 2116
    if-eqz v8, :cond_b

    .line 2117
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2110
    :cond_b
    return-object v16

    .line 2116
    :cond_c
    if-eqz v8, :cond_d

    .line 2117
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_d
    move-object v7, v8

    .line 2122
    .end local v2    # "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;
    .end local v4    # "endOffset":J
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v11    # "sefData":[B
    .end local v12    # "skipCheck":J
    .end local v14    # "startOffset":J
    :cond_e
    :goto_0
    return-object v11

    .line 2113
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .local v11, "sefData":[B
    :catch_0
    move-exception v3

    .line 2114
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "sefData":[B
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2116
    if-eqz v7, :cond_e

    .line 2117
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 2115
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 2116
    :goto_2
    if-eqz v7, :cond_f

    .line 2117
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 2115
    :cond_f
    throw v16

    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v16

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2113
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getDataCount(Ljava/io/File;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2133
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2134
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2135
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/4 v2, -0x1

    return v2

    .line 2139
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v1

    .line 2145
    .local v1, "ret":I
    return v1
.end method

.method public static getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2204
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2209
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 2210
    :cond_0
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    return-object v3

    .line 2214
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 2215
    :cond_2
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid key name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    return-object v3

    :cond_3
    move-object v1, v3

    .line 2219
    nop

    nop

    .line 2220
    .local v1, "posArray":[J
    new-instance v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    invoke-direct {v2}, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;-><init>()V

    .line 2223
    .local v2, "position":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 2224
    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->getAudioDataPositionArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 2225
    if-nez v1, :cond_4

    .line 2226
    const-string/jumbo v4, "SemExtendedFormat"

    const-string/jumbo v5, "No Sound data is found in file."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    return-object v3

    .line 2229
    :cond_4
    aget-wide v4, v1, v5

    iput-wide v4, v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    .line 2230
    aget-wide v4, v1, v6

    iput-wide v4, v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    .line 2231
    return-object v2

    .line 2235
    :cond_5
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v1

    .line 2236
    if-nez v1, :cond_6

    .line 2237
    const-string/jumbo v4, "SemExtendedFormat"

    const-string/jumbo v5, "No SEF data is found in file."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    return-object v3

    .line 2240
    :cond_6
    aget-wide v4, v1, v5

    iput-wide v4, v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    .line 2241
    aget-wide v4, v1, v6

    iput-wide v4, v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    .line 2242
    return-object v2
.end method

.method public static getDataPositionArray(Ljava/io/File;Ljava/lang/String;)[J
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2255
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 2260
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2261
    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    return-object v2

    .line 2265
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 2266
    :cond_2
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid key name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    return-object v2

    :cond_3
    move-object v0, v2

    .line 2270
    nop

    nop

    .line 2273
    .local v0, "PositionData":[J
    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 2274
    invoke-static {v1}, Lcom/samsung/android/media/QdioJNI;->getAudioDataPositionArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2

    .line 2278
    :cond_4
    invoke-static {v1, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 2279
    if-nez v0, :cond_5

    .line 2280
    const-string/jumbo v3, "SemExtendedFormat"

    const-string/jumbo v4, "No SEF data matching to given keyName is found in file."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    return-object v2

    .line 2284
    :cond_5
    return-object v0
.end method

.method public static getDataType(Ljava/io/File;Ljava/lang/String;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 2157
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2162
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2163
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return v4

    .line 2167
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2168
    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    return v4

    .line 2172
    :cond_3
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getDataTypeArray(Ljava/io/File;)[I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2183
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2188
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2189
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    return-object v4

    .line 2193
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public static getKeyNameArray(Ljava/io/File;)[Ljava/lang/String;
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2011
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2016
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2017
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    return-object v4

    .line 2021
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKeyNameArray(Ljava/io/File;I)[Ljava/lang/String;
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2033
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2038
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2039
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Data Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    return-object v4

    .line 2038
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2043
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMajorDataType(Ljava/lang/String;)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 2871
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 2872
    :cond_0
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    return v7

    .line 2876
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 2877
    return v7

    .line 2880
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2881
    .local v3, "sefFile":Ljava/io/File;
    invoke-static {v3}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v0

    .line 2882
    .local v0, "dataTypes":[I
    if-nez v0, :cond_3

    .line 2883
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No data type has been found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    return v7

    .line 2887
    :cond_3
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v7, :cond_5

    .line 2888
    aget v4, v0, v2

    const/16 v5, 0x800

    if-lt v4, v5, :cond_4

    .line 2889
    aget v4, v0, v2

    const/16 v5, 0x4000

    if-gt v4, v5, :cond_4

    .line 2890
    aget v4, v0, v2

    and-int/lit8 v4, v4, 0xf

    if-nez v4, :cond_4

    .line 2891
    aget v4, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 2887
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2894
    .end local v0    # "dataTypes":[I
    .end local v2    # "i":I
    .end local v3    # "sefFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2896
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2899
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No major data type has been found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    return v7
.end method

.method public static getSEFData(Ljava/io/File;Ljava/lang/String;)[B
    .locals 19
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2566
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 2571
    .local v6, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_1

    .line 2572
    :cond_0
    const-string/jumbo v16, "SemExtendedFormat"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Invalid file name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const/16 v16, 0x0

    return-object v16

    .line 2576
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_3

    .line 2577
    :cond_2
    const-string/jumbo v16, "SemExtendedFormat"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Invalid key name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    const/16 v16, 0x0

    return-object v16

    .line 2581
    :cond_3
    const/4 v11, 0x0

    .line 2582
    .local v11, "sefData":[B
    const/4 v7, 0x0

    .line 2585
    .local v7, "fis":Ljava/io/FileInputStream;
    invoke-static {v6}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_4

    invoke-static {v6}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 2586
    invoke-static {v6}, Lcom/samsung/android/media/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;

    move-result-object v10

    .line 2588
    .local v10, "qdioJpegData":Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/samsung/android/media/QdioJNI;->getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B

    move-result-object v11

    .line 2589
    .local v11, "sefData":[B
    return-object v11

    .line 2594
    .end local v10    # "qdioJpegData":Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    .local v11, "sefData":[B
    :cond_4
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2595
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;

    move-result-object v2

    .line 2596
    .local v2, "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;
    if-nez v2, :cond_6

    .line 2597
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2598
    const/16 v16, 0x0

    .line 2627
    if-eqz v8, :cond_5

    .line 2628
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2598
    :cond_5
    return-object v16

    .line 2601
    :cond_6
    :try_start_2
    iget-wide v14, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->offset:J

    .line 2602
    .local v14, "startOffset":J
    iget-wide v0, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 2608
    .local v4, "endOffset":J
    iget-wide v0, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v11, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2609
    .local v11, "sefData":[B
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_8

    .line 2610
    const/16 v16, 0x0

    .line 2627
    if-eqz v8, :cond_7

    .line 2628
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2610
    :cond_7
    return-object v16

    .line 2612
    :cond_8
    :try_start_3
    invoke-virtual {v8, v14, v15}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    .line 2613
    .local v12, "skipCheck":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_a

    .line 2614
    const/16 v16, 0x0

    .line 2627
    if-eqz v8, :cond_9

    .line 2628
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2614
    :cond_9
    return-object v16

    .line 2619
    :cond_a
    :try_start_4
    invoke-virtual {v8, v11}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    .line 2620
    .local v9, "length":I
    if-nez v9, :cond_c

    .line 2621
    const/16 v16, 0x0

    .line 2627
    if-eqz v8, :cond_b

    .line 2628
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2621
    :cond_b
    return-object v16

    .line 2627
    :cond_c
    if-eqz v8, :cond_d

    .line 2628
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_d
    move-object v7, v8

    .line 2633
    .end local v2    # "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;
    .end local v4    # "endOffset":J
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v11    # "sefData":[B
    .end local v12    # "skipCheck":J
    .end local v14    # "startOffset":J
    :cond_e
    :goto_0
    return-object v11

    .line 2624
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .local v11, "sefData":[B
    :catch_0
    move-exception v3

    .line 2625
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "sefData":[B
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2627
    if-eqz v7, :cond_e

    .line 2628
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 2626
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 2627
    :goto_2
    if-eqz v7, :cond_f

    .line 2628
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 2626
    :cond_f
    throw v16

    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v16

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2624
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getSEFData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 17
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2653
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_1

    .line 2654
    :cond_0
    const-string/jumbo v14, "SemExtendedFormat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid file name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    const/4 v14, 0x0

    return-object v14

    .line 2658
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_3

    .line 2659
    :cond_2
    const-string/jumbo v14, "SemExtendedFormat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid key name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    const/4 v14, 0x0

    return-object v14

    .line 2663
    :cond_3
    const/4 v9, 0x0

    .line 2664
    .local v9, "sefData":[B
    const/4 v6, 0x0

    .line 2666
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2667
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;

    move-result-object v2

    .line 2668
    .local v2, "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;
    if-nez v2, :cond_5

    .line 2669
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2670
    const/4 v14, 0x0

    .line 2699
    if-eqz v7, :cond_4

    .line 2700
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 2670
    :cond_4
    return-object v14

    .line 2673
    :cond_5
    :try_start_2
    iget-wide v12, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->offset:J

    .line 2674
    .local v12, "startOffset":J
    iget-wide v14, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    add-long v4, v12, v14

    .line 2680
    .local v4, "endOffset":J
    iget-wide v14, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    long-to-int v14, v14

    new-array v9, v14, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2681
    .local v9, "sefData":[B
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-gez v14, :cond_7

    .line 2682
    const/4 v14, 0x0

    .line 2699
    if-eqz v7, :cond_6

    .line 2700
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 2682
    :cond_6
    return-object v14

    .line 2684
    :cond_7
    :try_start_3
    invoke-virtual {v7, v12, v13}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v10

    .line 2685
    .local v10, "skipCheck":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_9

    .line 2686
    const/4 v14, 0x0

    .line 2699
    if-eqz v7, :cond_8

    .line 2700
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 2686
    :cond_8
    return-object v14

    .line 2691
    :cond_9
    :try_start_4
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    .line 2692
    .local v8, "length":I
    if-nez v8, :cond_b

    .line 2693
    const/4 v14, 0x0

    .line 2699
    if-eqz v7, :cond_a

    .line 2700
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 2693
    :cond_a
    return-object v14

    .line 2699
    :cond_b
    if-eqz v7, :cond_c

    .line 2700
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_c
    move-object v6, v7

    .line 2705
    .end local v2    # "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;
    .end local v4    # "endOffset":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "length":I
    .end local v9    # "sefData":[B
    .end local v10    # "skipCheck":J
    .end local v12    # "startOffset":J
    :cond_d
    :goto_0
    return-object v9

    .line 2696
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .local v9, "sefData":[B
    :catch_0
    move-exception v3

    .line 2697
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "sefData":[B
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2699
    if-eqz v6, :cond_d

    .line 2700
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 2698
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 2699
    :goto_2
    if-eqz v6, :cond_e

    .line 2700
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 2698
    :cond_e
    throw v14

    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2696
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getSEFDataCount(Ljava/io/File;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2717
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2718
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2719
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    const/4 v2, -0x1

    return v2

    .line 2723
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v1

    .line 2729
    .local v1, "ret":I
    return v1
.end method

.method public static getSEFDataCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2743
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2744
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const/4 v1, -0x1

    return v1

    .line 2748
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v0

    .line 2754
    .local v0, "ret":I
    return v0
.end method

.method public static getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2393
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2394
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    return-object v5

    .line 2398
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2399
    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return-object v5

    .line 2403
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 2404
    .local v0, "posArray":[I
    if-nez v0, :cond_4

    .line 2405
    const-string/jumbo v2, "SemExtendedFormat"

    const-string/jumbo v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    return-object v5

    .line 2409
    :cond_4
    new-instance v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;

    invoke-direct {v1}, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;-><init>()V

    .line 2410
    .local v1, "position":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    aget v2, v0, v3

    iput v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->offset:I

    .line 2411
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->length:I

    .line 2413
    return-object v1
.end method

.method public static getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2461
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2462
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    return-object v5

    .line 2466
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2467
    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    return-object v5

    .line 2471
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 2472
    .local v0, "posArray":[J
    if-nez v0, :cond_4

    .line 2473
    const-string/jumbo v2, "SemExtendedFormat"

    const-string/jumbo v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    return-object v5

    .line 2477
    :cond_4
    new-instance v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;

    invoke-direct {v1}, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;-><init>()V

    .line 2478
    .local v1, "position":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;
    aget-wide v2, v0, v3

    iput-wide v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->offset:J

    .line 2479
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    .line 2481
    return-object v1
.end method

.method public static getSEFDataPositionArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2429
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2430
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    return-object v4

    .line 2434
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2435
    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    return-object v4

    .line 2439
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 2440
    .local v0, "posArray":[I
    if-nez v0, :cond_4

    .line 2441
    const-string/jumbo v1, "SemExtendedFormat"

    const-string/jumbo v2, "No SEF data is found in file."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    return-object v4

    .line 2445
    :cond_4
    return-object v0
.end method

.method public static getSEFDataType(Ljava/io/File;Ljava/lang/String;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 2767
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2772
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2773
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    return v4

    .line 2777
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2778
    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    return v4

    .line 2782
    :cond_3
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 2801
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2802
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    return v3

    .line 2806
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2807
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    return v3

    .line 2811
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSEFSubDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2497
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2498
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    return-object v5

    .line 2502
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2503
    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    return-object v5

    .line 2507
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFSubDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 2508
    .local v0, "posArray":[I
    if-nez v0, :cond_4

    .line 2509
    const-string/jumbo v2, "SemExtendedFormat"

    const-string/jumbo v3, "No SEF sub data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    return-object v5

    .line 2513
    :cond_4
    new-instance v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;

    invoke-direct {v1}, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;-><init>()V

    .line 2514
    .local v1, "position":Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;
    aget v2, v0, v3

    iput v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;->offset:I

    .line 2515
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;->length:I

    .line 2517
    return-object v1
.end method

.method public static getSEFSubDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2533
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2534
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    return-object v5

    .line 2538
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2539
    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    return-object v5

    .line 2543
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFSubDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 2544
    .local v0, "posArray":[J
    if-nez v0, :cond_4

    .line 2545
    const-string/jumbo v2, "SemExtendedFormat"

    const-string/jumbo v3, "No SEF sub data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    return-object v5

    .line 2549
    :cond_4
    new-instance v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;

    invoke-direct {v1}, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;-><init>()V

    .line 2550
    .local v1, "position":Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;
    aget-wide v2, v0, v3

    iput-wide v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;->offset:J

    .line 2551
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;->length:J

    .line 2553
    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 946
    invoke-static {}, Lcom/samsung/android/media/SEFJNI;->getNativeVersion()I

    move-result v0

    .line 947
    .local v0, "native_version":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1.03_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "version":Ljava/lang/String;
    return-object v1
.end method

.method public static hasData(Ljava/io/File;I)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 866
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 872
    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Data Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return v6

    .line 871
    :cond_1
    if-eq p1, v4, :cond_0

    .line 876
    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 877
    return v6

    .line 879
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v0

    .line 880
    .local v0, "currentTypes":[I
    if-nez v0, :cond_3

    .line 881
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return v6

    .line 885
    :cond_3
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v4, :cond_5

    .line 886
    aget v3, v0, v2

    if-ne p1, v3, :cond_4

    .line 887
    const/4 v3, 0x1

    return v3

    .line 885
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 891
    :cond_5
    return v6
.end method

.method public static hasData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 904
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 910
    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", keyName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return v6

    .line 909
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 914
    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 915
    return v6

    .line 917
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listKeyNames(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "currentTypes":[Ljava/lang/String;
    if-nez v0, :cond_3

    .line 919
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return v6

    .line 921
    :cond_3
    array-length v3, v0

    if-gtz v3, :cond_4

    if-eqz v0, :cond_4

    .line 922
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return v6

    .line 926
    :cond_4
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    .line 927
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 928
    const/4 v3, 0x1

    return v3

    .line 926
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 932
    :cond_6
    return v6
.end method

.method public static hasDataType(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 1119
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1120
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Data Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return v5

    .line 1119
    :cond_1
    if-eq p1, v3, :cond_0

    .line 1124
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1125
    return v5

    .line 1127
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    .line 1128
    .local v0, "currentTypes":[I
    if-nez v0, :cond_3

    .line 1129
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    return v5

    .line 1133
    :cond_3
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-le v1, v3, :cond_5

    .line 1134
    aget v2, v0, v1

    if-ne p1, v2, :cond_4

    .line 1135
    const/4 v2, 0x1

    return v2

    .line 1133
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1139
    :cond_5
    return v5
.end method

.method public static hasSEFData(Ljava/io/File;I)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 1033
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1039
    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Data Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    return v6

    .line 1038
    :cond_1
    if-eq p1, v4, :cond_0

    .line 1043
    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1044
    return v6

    .line 1046
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v0

    .line 1047
    .local v0, "currentTypes":[I
    if-nez v0, :cond_3

    .line 1048
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return v6

    .line 1052
    :cond_3
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v4, :cond_5

    .line 1053
    aget v3, v0, v2

    if-ne p1, v3, :cond_4

    .line 1054
    const/4 v3, 0x1

    return v3

    .line 1052
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1058
    :cond_5
    return v6
.end method

.method public static hasSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1072
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1078
    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", keyName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return v6

    .line 1077
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1082
    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1083
    return v6

    .line 1085
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listKeyNames(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "currentTypes":[Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1087
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return v6

    .line 1089
    :cond_3
    array-length v3, v0

    if-gtz v3, :cond_4

    if-eqz v0, :cond_4

    .line 1090
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return v6

    .line 1094
    :cond_4
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    .line 1095
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1096
    const/4 v3, 0x1

    return v3

    .line 1094
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1100
    :cond_6
    return v6
.end method

.method public static isAudioJPEG(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 3410
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 3428
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isSEFFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 968
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 971
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return v5

    .line 976
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 977
    const/4 v1, 0x0

    .line 986
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 979
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public static isSEFFile(Ljava/lang/String;)Z
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1004
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1005
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return v4

    .line 1010
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1011
    const/4 v0, 0x0

    .line 1020
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1013
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public static isValidFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 836
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 839
    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return v5

    .line 844
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 845
    const/4 v1, 0x0

    .line 854
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 847
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public static listKeyNames(Ljava/io/File;)[Ljava/lang/String;
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2297
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2302
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2303
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    return-object v4

    .line 2307
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static listKeyNames(Ljava/io/File;I)[Ljava/lang/String;
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2320
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2325
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2326
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Data Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    return-object v4

    .line 2325
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2330
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static listKeyNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2348
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2349
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    return-object v3

    .line 2353
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2372
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2373
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Data Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    return-object v3

    .line 2372
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2377
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static listSEFDataTypes(Ljava/io/File;)[I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2823
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2828
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2829
    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    return-object v4

    .line 2833
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public static listSEFDataTypes(Ljava/lang/String;)[I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2851
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2852
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    return-object v3

    .line 2856
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "audioStream"    # [B

    .prologue
    const/4 v3, 0x0

    .line 3203
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 3204
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    if-eqz p2, :cond_2

    .line 3206
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveAudioJPEG input parameter is null :  audioStream.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    :goto_0
    return v3

    .line 3203
    :cond_1
    array-length v0, p2

    if-lez v0, :cond_0

    .line 3213
    array-length v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p2, v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->saveAudioJPEG(Ljava/lang/String;[BILjava/lang/String;I)I

    move-result v0

    return v0

    .line 3208
    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    const-string/jumbo v1, "saveAudioJPEG input parameter is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveAudioJPEG(Ljava/lang/String;[B)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "audiostream"    # [B

    .prologue
    .line 3183
    const-string/jumbo v0, "SoundShot_000"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/media/SemExtendedFormat;->saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public static showSEFDataList(Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 3496
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3497
    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 3501
    return-void

    .line 3491
    :cond_2
    return-void
.end method
