.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private m3dvideotype:Ljava/lang/String;

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mAudioCodecInfo:Ljava/lang/String;

.field private mBitDepth:I

.field private mCityID:J

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mCreationTime:J

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mFormat:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIs360video:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mRecordingMode:I

.field private mRecordingType:I

.field private mSamplingRate:I

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mVideoCodecInfo:Ljava/lang/String;

.field private mVideoLatitude:F

.field private mVideoLongitude:F

.field private mVoiceLatitude:F

.field private mVoiceLongitude:F

.field private mWeatherID:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 4
    .param p1, "this$0"    # Landroid/media/MediaScanner;

    .prologue
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    .line 570
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    .line 594
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    .line 595
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    .line 596
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    .line 597
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    .line 598
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 599
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    .line 600
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    .line 601
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    .line 602
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    .line 603
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    .line 604
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    .line 608
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    .line 570
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaScanner;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .prologue
    .line 930
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    const/4 v1, 0x1

    return v1

    .line 934
    :cond_0
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v1, 0x0

    return v1
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1476
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1477
    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1478
    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1479
    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 1478
    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 64
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v59, v0

    if-eqz v59, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->length()I

    move-result v59

    if-nez v59, :cond_1

    .line 1116
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1119
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v57

    .line 1120
    .local v57, "values":Landroid/content/ContentValues;
    const-string/jumbo v59, "title"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1121
    .local v53, "title":Ljava/lang/String;
    if-eqz v53, :cond_2

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_3

    .line 1122
    :cond_2
    const-string/jumbo v59, "_data"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1123
    const-string/jumbo v59, "title"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_3
    const-string/jumbo v59, "album"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1126
    .local v7, "album":Ljava/lang/String;
    const-string/jumbo v59, "<unknown>"

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5

    .line 1127
    const-string/jumbo v59, "_data"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1129
    const/16 v59, 0x2f

    move/from16 v0, v59

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    .line 1130
    .local v35, "lastSlash":I
    if-ltz v35, :cond_5

    .line 1131
    const/16 v46, 0x0

    .line 1133
    .local v46, "previousSlash":I
    :goto_0
    const/16 v59, 0x2f

    add-int/lit8 v60, v46, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v31

    .line 1134
    .local v31, "idx":I
    if-ltz v31, :cond_4

    move/from16 v0, v31

    move/from16 v1, v35

    if-lt v0, v1, :cond_a

    .line 1139
    :cond_4
    if-eqz v46, :cond_5

    .line 1140
    add-int/lit8 v59, v46, 0x1

    move/from16 v0, v59

    move/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1141
    const-string/jumbo v59, "album"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    .end local v31    # "idx":I
    .end local v35    # "lastSlash":I
    .end local v46    # "previousSlash":I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v50, v0

    .line 1146
    .local v50, "rowId":J
    const-wide/16 v8, 0x0

    .line 1147
    .local v8, "beforeExifExtractingTime":J
    const-wide/16 v22, 0x0

    .line 1148
    .local v22, "exifExtractingTime":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v59

    if-eqz v59, :cond_c

    const-wide/16 v60, 0x0

    cmp-long v59, v50, v60

    if-eqz v59, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get23(Landroid/media/MediaScanner;)I

    move-result v59

    if-eqz v59, :cond_c

    .line 1153
    :cond_6
    const-string/jumbo v59, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1154
    const-string/jumbo v59, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1155
    const-string/jumbo v59, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1157
    const-string/jumbo v59, "recordingtype"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    .line 1158
    .local v47, "recordingtype":Ljava/lang/Integer;
    if-eqz v47, :cond_b

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v59

    if-lez v59, :cond_b

    .line 1159
    const-string/jumbo v59, "is_music"

    const/16 v60, 0x0

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    :goto_1
    const-string/jumbo v59, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1249
    .end local v47    # "recordingtype":Ljava/lang/Integer;
    :cond_7
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1250
    .local v10, "beforeSEFExtractingTime":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v59, v0

    if-nez v59, :cond_1d

    .line 1251
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    const/16 v60, 0x1f

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_8

    .line 1252
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    const/16 v60, 0x20

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_1d

    .line 1253
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/samsung/android/media/SemExtendedFormat;->isSEFFile(Ljava/lang/String;)Z

    move-result v59

    .line 1250
    if-eqz v59, :cond_1d

    .line 1254
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v6

    .line 1255
    .local v6, "SEFDataTypes":[I
    if-eqz v6, :cond_1d

    .line 1256
    const-string/jumbo v49, ""

    .line 1257
    .local v49, "sefFileTypes":Ljava/lang/String;
    const/16 v26, 0x1

    .line 1258
    .local v26, "flag":Z
    array-length v0, v6

    move/from16 v59, v0

    add-int/lit8 v30, v59, -0x1

    .local v30, "i":I
    :goto_3
    const/16 v59, -0x1

    move/from16 v0, v30

    move/from16 v1, v59

    if-le v0, v1, :cond_1b

    .line 1259
    aget v59, v6, v30

    const/16 v60, 0xa01

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_16

    .line 1261
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    .line 1262
    const-string/jumbo v60, "Image_UTC_Data"

    .line 1261
    invoke-static/range {v59 .. v60}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    .line 1263
    .local v14, "data":[B
    if-eqz v14, :cond_9

    .line 1264
    new-instance v56, Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    .line 1265
    .local v56, "utc":Ljava/lang/String;
    const-string/jumbo v59, "datetaken"

    invoke-static/range {v56 .. v56}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    .end local v14    # "data":[B
    .end local v56    # "utc":Ljava/lang/String;
    :cond_9
    :goto_4
    add-int/lit8 v30, v30, -0x1

    goto :goto_3

    .line 1137
    .end local v6    # "SEFDataTypes":[I
    .end local v8    # "beforeExifExtractingTime":J
    .end local v10    # "beforeSEFExtractingTime":J
    .end local v22    # "exifExtractingTime":J
    .end local v26    # "flag":Z
    .end local v30    # "i":I
    .end local v49    # "sefFileTypes":Ljava/lang/String;
    .end local v50    # "rowId":J
    .restart local v31    # "idx":I
    .restart local v35    # "lastSlash":I
    .restart local v46    # "previousSlash":I
    :cond_a
    move/from16 v46, v31

    goto/16 :goto_0

    .line 1161
    .end local v31    # "idx":I
    .end local v35    # "lastSlash":I
    .end local v46    # "previousSlash":I
    .restart local v8    # "beforeExifExtractingTime":J
    .restart local v22    # "exifExtractingTime":J
    .restart local v47    # "recordingtype":Ljava/lang/Integer;
    .restart local v50    # "rowId":J
    :cond_b
    const-string/jumbo v59, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 1165
    .end local v47    # "recordingtype":Ljava/lang/Integer;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    const/16 v60, 0x1f

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_d

    .line 1166
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v59

    .line 1165
    if-eqz v59, :cond_7

    .line 1166
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v59, v0

    if-nez v59, :cond_7

    .line 1167
    const/16 v58, -0x1

    .line 1168
    .local v58, "width":I
    const/16 v29, -0x1

    .line 1169
    .local v29, "height":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1170
    const/16 v20, 0x0

    .line 1172
    .local v20, "exif":Landroid/media/ExifInterface;
    :try_start_1
    new-instance v21, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v20    # "exif":Landroid/media/ExifInterface;
    .local v21, "exif":Landroid/media/ExifInterface;
    move-object/from16 v20, v21

    .line 1176
    .end local v21    # "exif":Landroid/media/ExifInterface;
    :goto_5
    if-eqz v20, :cond_10

    .line 1177
    const/16 v59, 0x2

    move/from16 v0, v59

    new-array v0, v0, [F

    move-object/from16 v36, v0

    .line 1178
    .local v36, "latlng":[F
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v59

    if-eqz v59, :cond_e

    .line 1179
    const-string/jumbo v59, "latitude"

    const/16 v60, 0x0

    aget v60, v36, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1180
    const-string/jumbo v59, "longitude"

    const/16 v60, 0x1

    aget v60, v36, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1183
    :cond_e
    invoke-virtual/range {v20 .. v20}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v54

    .line 1184
    .local v54, "time":J
    const-wide/16 v60, -0x1

    cmp-long v59, v54, v60

    if-eqz v59, :cond_13

    .line 1185
    const-string/jumbo v59, "datetaken"

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1196
    :cond_f
    :goto_6
    const-string/jumbo v59, "ImageWidth"

    const/16 v60, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v58

    .line 1197
    const-string/jumbo v59, "ImageLength"

    const/16 v60, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v29

    .line 1200
    const-string/jumbo v59, "Orientation"

    const/16 v60, -0x1

    .line 1199
    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v44

    .line 1201
    .local v44, "orientation":I
    const/16 v59, -0x1

    move/from16 v0, v44

    move/from16 v1, v59

    if-eq v0, v1, :cond_10

    .line 1204
    packed-switch v44, :pswitch_data_0

    .line 1215
    :pswitch_0
    const/16 v16, 0x0

    .line 1218
    .local v16, "degree":I
    :goto_7
    const-string/jumbo v59, "orientation"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1221
    .end local v16    # "degree":I
    .end local v36    # "latlng":[F
    .end local v44    # "orientation":I
    .end local v54    # "time":J
    :cond_10
    const/16 v59, -0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_11

    const/16 v59, -0x1

    move/from16 v0, v29

    move/from16 v1, v59

    if-ne v0, v1, :cond_14

    .line 1222
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 1228
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v59, v0

    if-lez v59, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    move/from16 v59, v0

    if-lez v59, :cond_12

    .line 1229
    const-string/jumbo v59, "width"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1230
    const-string/jumbo v59, "height"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    move/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1232
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    sub-long v22, v60, v8

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get33(Landroid/media/MediaScanner;)J

    move-result-wide v60

    add-long v60, v60, v22

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set10(Landroid/media/MediaScanner;J)J

    .line 1235
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    const-string/jumbo v60, "."

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v34

    .line 1236
    .local v34, "lastDot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v59

    if-eqz v59, :cond_7

    if-lez v34, :cond_7

    .line 1237
    const-wide/16 v60, 0x0

    cmp-long v59, v8, v60

    if-eqz v59, :cond_7

    const-wide/16 v60, 0x0

    cmp-long v59, v22, v60

    if-eqz v59, :cond_7

    .line 1238
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    add-int/lit8 v60, v34, 0x1

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 1239
    .local v24, "extention":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/media/MediaScanner$FileParsingTime;

    .line 1240
    .local v45, "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v45, :cond_15

    .line 1241
    move-object/from16 v0, v45

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v24

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1191
    .end local v24    # "extention":Ljava/lang/String;
    .end local v34    # "lastDot":I
    .end local v45    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .restart local v36    # "latlng":[F
    .restart local v54    # "time":J
    :cond_13
    invoke-virtual/range {v20 .. v20}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v54

    .line 1192
    const-wide/16 v60, -0x1

    cmp-long v59, v54, v60

    if-eqz v59, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x3e8

    mul-long v60, v60, v62

    sub-long v60, v60, v54

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->abs(J)J

    move-result-wide v60

    const-wide/32 v62, 0x5265c00

    cmp-long v59, v60, v62

    if-ltz v59, :cond_f

    .line 1193
    const-string/jumbo v59, "datetaken"

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_6

    .line 1206
    .restart local v44    # "orientation":I
    :pswitch_1
    const/16 v16, 0x5a

    .line 1207
    .restart local v16    # "degree":I
    goto/16 :goto_7

    .line 1209
    .end local v16    # "degree":I
    :pswitch_2
    const/16 v16, 0xb4

    .line 1210
    .restart local v16    # "degree":I
    goto/16 :goto_7

    .line 1212
    .end local v16    # "degree":I
    :pswitch_3
    const/16 v16, 0x10e

    .line 1213
    .restart local v16    # "degree":I
    goto/16 :goto_7

    .line 1224
    .end local v16    # "degree":I
    .end local v36    # "latlng":[F
    .end local v44    # "orientation":I
    .end local v54    # "time":J
    :cond_14
    move/from16 v0, v58

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1225
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_8

    .line 1244
    .restart local v24    # "extention":Ljava/lang/String;
    .restart local v34    # "lastDot":I
    .restart local v45    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v59

    new-instance v60, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v60

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v59

    move-object/from16 v1, v24

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1267
    .end local v24    # "extention":Ljava/lang/String;
    .end local v29    # "height":I
    .end local v34    # "lastDot":I
    .end local v45    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .end local v58    # "width":I
    .restart local v6    # "SEFDataTypes":[I
    .restart local v10    # "beforeSEFExtractingTime":J
    .restart local v26    # "flag":Z
    .restart local v30    # "i":I
    .restart local v49    # "sefFileTypes":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 1268
    .local v18, "e":Ljava/io/IOException;
    const-string/jumbo v59, "MediaScanner"

    const-string/jumbo v60, "IOException in MediaScanner.endFile()"

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1273
    .end local v18    # "e":Ljava/io/IOException;
    :cond_16
    aget v59, v6, v30

    const/16 v60, 0xa41

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_9

    .line 1277
    aget v59, v6, v30

    const/16 v60, 0x9e0

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_17

    .line 1279
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    .line 1280
    const-string/jumbo v60, "Burst_Shot_Info"

    .line 1279
    invoke-static/range {v59 .. v60}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    .line 1281
    .restart local v14    # "data":[B
    if-eqz v14, :cond_17

    .line 1282
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    .line 1283
    .local v28, "group_id":Ljava/lang/String;
    const-string/jumbo v59, "group_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1291
    .end local v14    # "data":[B
    .end local v28    # "group_id":Ljava/lang/String;
    :cond_17
    :goto_9
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string/jumbo v60, ","

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    aget v60, v6, v30

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 1293
    if-eqz v26, :cond_9

    aget v59, v6, v30

    const/16 v60, 0x800

    move/from16 v0, v59

    move/from16 v1, v60

    if-lt v0, v1, :cond_9

    .line 1294
    aget v59, v6, v30

    rem-int/lit8 v59, v59, 0x10

    if-nez v59, :cond_9

    .line 1295
    const-string/jumbo v59, "MediaScanner"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "sef_file_type set to "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    aget v61, v6, v30

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string/jumbo v59, "sef_file_type"

    aget v60, v6, v30

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1297
    array-length v0, v6

    move/from16 v59, v0

    const/16 v60, 0x2

    move/from16 v0, v59

    move/from16 v1, v60

    if-le v0, v1, :cond_1a

    .line 1298
    const/4 v15, 0x0

    .line 1299
    .local v15, "dataSubType":I
    const/16 v33, 0x0

    .local v33, "j":I
    :goto_a
    array-length v0, v6

    move/from16 v59, v0

    move/from16 v0, v33

    move/from16 v1, v59

    if-ge v0, v1, :cond_19

    .line 1300
    aget v59, v6, v33

    aget v60, v6, v30

    sub-int v17, v59, v60

    .line 1301
    .local v17, "diffOfDataType":I
    move/from16 v0, v30

    move/from16 v1, v33

    if-eq v0, v1, :cond_18

    const/16 v59, 0x10

    move/from16 v0, v17

    move/from16 v1, v59

    if-ge v0, v1, :cond_18

    if-lez v17, :cond_18

    .line 1302
    add-int/lit8 v59, v17, -0x1

    const/16 v60, 0x1

    shl-int v59, v60, v59

    or-int v15, v15, v59

    .line 1299
    :cond_18
    add-int/lit8 v33, v33, 0x1

    goto :goto_a

    .line 1285
    .end local v15    # "dataSubType":I
    .end local v17    # "diffOfDataType":I
    .end local v33    # "j":I
    :catch_1
    move-exception v18

    .line 1286
    .restart local v18    # "e":Ljava/io/IOException;
    const-string/jumbo v59, "MediaScanner"

    const-string/jumbo v60, "IOException in MediaScanner.endFile()"

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 1305
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v15    # "dataSubType":I
    .restart local v33    # "j":I
    :cond_19
    const-string/jumbo v59, "sef_file_sub_type"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1307
    .end local v15    # "dataSubType":I
    .end local v33    # "j":I
    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 1310
    :cond_1b
    const-string/jumbo v59, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_1c

    .line 1311
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string/jumbo v60, ","

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 1312
    const-string/jumbo v59, "MediaScanner"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "sef_file_types set to "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_1c
    const-string/jumbo v59, "sef_file_types"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    .end local v6    # "SEFDataTypes":[I
    .end local v26    # "flag":Z
    .end local v30    # "i":I
    .end local v49    # "sefFileTypes":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get37(Landroid/media/MediaScanner;)J

    move-result-wide v60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v62

    sub-long v62, v62, v10

    add-long v60, v60, v62

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set14(Landroid/media/MediaScanner;J)J

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get18(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v52

    .line 1321
    .local v52, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get21(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v32

    .line 1322
    .local v32, "inserter":Landroid/media/MediaInserter;
    const-wide/16 v12, 0x0

    .line 1323
    .local v12, "bulkInserterTime":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v59, v0

    if-nez v59, :cond_1e

    .line 1324
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v59

    if-eqz v59, :cond_29

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get39(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v52

    .line 1332
    :cond_1e
    :goto_b
    const/16 v48, 0x0

    .line 1333
    .local v48, "result":Landroid/net/Uri;
    const/16 v38, 0x0

    .line 1334
    .local v38, "needToSetSettings":Z
    const/16 v40, 0x0

    .line 1335
    .local v40, "needToSetSettings_notification":Z
    const/16 v41, 0x0

    .line 1336
    .local v41, "needToSetSettings_notification_2":Z
    const/16 v42, 0x0

    .line 1337
    .local v42, "needToSetSettings_ringtone":Z
    const/16 v43, 0x0

    .line 1338
    .local v43, "needToSetSettings_ringtone_2":Z
    const/16 v39, 0x0

    .line 1342
    .local v39, "needToSetSettings_alarm":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get20(Landroid/media/MediaScanner;)Z

    move-result v59

    if-eqz v59, :cond_21

    .line 1343
    if-eqz p3, :cond_2d

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get9(Landroid/media/MediaScanner;)Z

    move-result v59

    if-nez v59, :cond_20

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_1f

    .line 1346
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1345
    if-eqz v59, :cond_20

    .line 1347
    :cond_1f
    const/16 v38, 0x1

    .line 1348
    const/16 v40, 0x1

    .line 1351
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get27(Landroid/media/MediaScanner;)I

    move-result v59

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-le v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Z

    move-result v59

    if-eqz v59, :cond_2b

    .line 1391
    :cond_21
    :goto_c
    const-wide/16 v60, 0x0

    cmp-long v59, v50, v60

    if-nez v59, :cond_38

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get23(Landroid/media/MediaScanner;)I

    move-result v59

    if-eqz v59, :cond_22

    .line 1393
    const-string/jumbo v59, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get23(Landroid/media/MediaScanner;)I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1395
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get18(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v59

    move-object/from16 v0, v52

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_24

    .line 1396
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    move/from16 v27, v0

    .line 1397
    .local v27, "format":I
    if-nez v27, :cond_23

    .line 1398
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v59 .. v60}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 1400
    :cond_23
    const-string/jumbo v59, "format"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1402
    .end local v27    # "format":I
    :cond_24
    const-string/jumbo v59, "storage_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get28(Landroid/media/MediaScanner;)I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1409
    if-eqz v32, :cond_25

    if-eqz v38, :cond_36

    .line 1410
    :cond_25
    if-eqz v32, :cond_26

    .line 1411
    invoke-virtual/range {v32 .. v32}, Landroid/media/MediaInserter;->flushAll()V

    .line 1413
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get22(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v52

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v48

    .line 1420
    .end local v48    # "result":Landroid/net/Uri;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get34(Landroid/media/MediaScanner;)J

    move-result-wide v60

    const-wide/16 v62, 0x1

    add-long v60, v60, v62

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set11(Landroid/media/MediaScanner;J)J

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get30(Landroid/media/MediaScanner;)J

    move-result-wide v60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v62

    sub-long v62, v62, v12

    add-long v60, v60, v62

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set7(Landroid/media/MediaScanner;J)J

    .line 1422
    if-eqz v48, :cond_27

    .line 1423
    invoke-static/range {v48 .. v48}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v50

    .line 1424
    move-wide/from16 v0, v50

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1453
    :cond_27
    :goto_e
    if-eqz v38, :cond_28

    .line 1454
    if-eqz v40, :cond_3f

    .line 1455
    const-string/jumbo v59, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set1(Landroid/media/MediaScanner;Z)Z

    .line 1472
    :cond_28
    :goto_f
    return-object v48

    .line 1326
    .end local v38    # "needToSetSettings":Z
    .end local v39    # "needToSetSettings_alarm":Z
    .end local v40    # "needToSetSettings_notification":Z
    .end local v41    # "needToSetSettings_notification_2":Z
    .end local v42    # "needToSetSettings_ringtone":Z
    .end local v43    # "needToSetSettings_ringtone_2":Z
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v59

    if-eqz v59, :cond_2a

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get19(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v52

    goto/16 :goto_b

    .line 1328
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v59

    if-eqz v59, :cond_1e

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get1(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v52

    goto/16 :goto_b

    .line 1352
    .restart local v38    # "needToSetSettings":Z
    .restart local v39    # "needToSetSettings_alarm":Z
    .restart local v40    # "needToSetSettings_notification":Z
    .restart local v41    # "needToSetSettings_notification_2":Z
    .restart local v42    # "needToSetSettings_ringtone":Z
    .restart local v43    # "needToSetSettings_ringtone_2":Z
    .restart local v48    # "result":Landroid/net/Uri;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_2c

    .line 1353
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1352
    if-eqz v59, :cond_21

    .line 1354
    :cond_2c
    const/16 v38, 0x1

    .line 1355
    const/16 v41, 0x1

    goto/16 :goto_c

    .line 1358
    :cond_2d
    if-eqz p2, :cond_34

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get13(Landroid/media/MediaScanner;)Z

    move-result v59

    if-nez v59, :cond_2f

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_2e

    .line 1361
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1360
    if-eqz v59, :cond_2f

    .line 1362
    :cond_2e
    const/16 v38, 0x1

    .line 1363
    const/16 v42, 0x1

    .line 1366
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get27(Landroid/media/MediaScanner;)I

    move-result v59

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-le v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Z

    move-result v59

    if-eqz v59, :cond_32

    .line 1373
    :cond_30
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Z

    move-result v59

    if-nez v59, :cond_21

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_31

    .line 1375
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1374
    if-eqz v59, :cond_21

    .line 1376
    :cond_31
    const/16 v38, 0x1

    .line 1377
    const/16 v39, 0x1

    goto/16 :goto_c

    .line 1367
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_33

    .line 1368
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1367
    if-eqz v59, :cond_30

    .line 1369
    :cond_33
    const/16 v38, 0x1

    .line 1370
    const/16 v43, 0x1

    goto :goto_10

    .line 1380
    :cond_34
    if-eqz p4, :cond_21

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Z

    move-result v59

    if-nez v59, :cond_21

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_35

    .line 1383
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1382
    if-eqz v59, :cond_21

    .line 1384
    :cond_35
    const/16 v38, 0x1

    .line 1385
    const/16 v39, 0x1

    goto/16 :goto_c

    .line 1414
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    move/from16 v59, v0

    const/16 v60, 0x3001

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_37

    .line 1415
    move-object/from16 v0, v32

    move-object/from16 v1, v52

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_d

    .line 1417
    :cond_37
    move-object/from16 v0, v32

    move-object/from16 v1, v52

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_d

    .line 1428
    :cond_38
    move-object/from16 v0, v52

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v48

    .line 1431
    .local v48, "result":Landroid/net/Uri;
    const-string/jumbo v59, "_data"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1433
    const/16 v37, 0x0

    .line 1434
    .local v37, "mediaType":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v59

    if-nez v59, :cond_3a

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v25

    .line 1436
    .local v25, "fileType":I
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v59

    if-eqz v59, :cond_3b

    .line 1437
    const/16 v37, 0x2

    .line 1447
    :cond_39
    :goto_11
    const-string/jumbo v59, "media_type"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1449
    .end local v25    # "fileType":I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get38(Landroid/media/MediaScanner;)J

    move-result-wide v60

    const-wide/16 v62, 0x1

    add-long v60, v60, v62

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set15(Landroid/media/MediaScanner;J)J

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get22(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v48

    move-object/from16 v2, v57

    move-object/from16 v3, v60

    move-object/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1438
    .restart local v25    # "fileType":I
    :cond_3b
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v59

    if-eqz v59, :cond_3c

    .line 1439
    const/16 v37, 0x3

    goto :goto_11

    .line 1440
    :cond_3c
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v59

    if-eqz v59, :cond_3d

    .line 1441
    const/16 v37, 0x1

    goto :goto_11

    .line 1442
    :cond_3d
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v59

    if-eqz v59, :cond_3e

    .line 1443
    const/16 v37, 0x4

    goto :goto_11

    .line 1444
    :cond_3e
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isDocFileType(I)Z

    move-result v59

    if-eqz v59, :cond_39

    .line 1445
    const-string/jumbo v59, "is_doc"

    const/16 v60, 0x1

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_11

    .line 1457
    .end local v25    # "fileType":I
    .end local v37    # "mediaType":I
    .end local v48    # "result":Landroid/net/Uri;
    :cond_3f
    if-eqz v41, :cond_40

    .line 1458
    const-string/jumbo v59, "notification_sound_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set2(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1460
    :cond_40
    if-eqz v42, :cond_41

    .line 1461
    const-string/jumbo v59, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set3(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1463
    :cond_41
    if-eqz v43, :cond_42

    .line 1464
    const-string/jumbo v59, "ringtone_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set4(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1466
    :cond_42
    if-eqz v39, :cond_28

    .line 1467
    const-string/jumbo v59, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set0(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1173
    .end local v10    # "beforeSEFExtractingTime":J
    .end local v12    # "bulkInserterTime":J
    .end local v32    # "inserter":Landroid/media/MediaInserter;
    .end local v38    # "needToSetSettings":Z
    .end local v39    # "needToSetSettings_alarm":Z
    .end local v40    # "needToSetSettings_notification":Z
    .end local v41    # "needToSetSettings_notification_2":Z
    .end local v42    # "needToSetSettings_ringtone":Z
    .end local v43    # "needToSetSettings_ringtone_2":Z
    .end local v52    # "tableUri":Landroid/net/Uri;
    .restart local v20    # "exif":Landroid/media/ExifInterface;
    .restart local v29    # "height":I
    .restart local v58    # "width":I
    :catch_2
    move-exception v19

    .local v19, "ex":Ljava/io/IOException;
    goto/16 :goto_5

    .line 1204
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1509
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1510
    const/4 v2, 0x0

    return v2

    .line 1513
    :cond_0
    const/4 v1, 0x0

    .line 1515
    .local v1, "resultFileType":I
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1516
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/media/MediaScanner;->-set5(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1519
    :cond_1
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1520
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 1521
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, "drmMimetype":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1523
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1524
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    .line 1527
    .end local v0    # "drmMimetype":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 833
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 834
    .local v1, "length":I
    if-ne p2, v1, :cond_0

    return p3

    .line 836
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 838
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    return p3

    .line 840
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 841
    .local v2, "result":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 842
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 843
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    return v2

    .line 844
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_0

    .line 847
    :cond_5
    return v2
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1010
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1011
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1012
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1013
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1014
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :goto_0
    return-void

    .line 1015
    :catch_0
    move-exception v0

    .local v0, "th":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 11
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 1484
    :try_start_0
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7, p1}, Landroid/media/MediaScanner;->-wrap2(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1485
    return-void

    .line 1488
    :cond_0
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1489
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1490
    .local v2, "existingSettingValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1491
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1492
    .local v6, "settingUri":Landroid/net/Uri;
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1493
    .local v5, "ringtoneUri":Landroid/net/Uri;
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v7

    .line 1494
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v8

    .line 1493
    invoke-static {v7, v8, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1496
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1497
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v7, "volume"

    iget-object v8, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v8}, Landroid/media/MediaScanner;->-get40(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1499
    .local v4, "log":Ljava/lang/String;
    const-string/jumbo v7, "MediaScanner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->-get22(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v7

    const-string/jumbo v8, "mediadb_log"

    invoke-virtual {v7, v8, v4, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1502
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "log":Ljava/lang/String;
    .end local v5    # "ringtoneUri":Landroid/net/Uri;
    .end local v6    # "settingUri":Landroid/net/Uri;
    :cond_1
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7, p1}, Landroid/media/MediaScanner;->-wrap3(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "existingSettingValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 1503
    :catch_0
    move-exception v1

    .line 1504
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "MediaScanner"

    const-string/jumbo v8, "RemoteException in setRingtoneIfNotSet"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 939
    const-string/jumbo v0, "2"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 940
    const-string/jumbo v0, "(2)"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 941
    const-string/jumbo v0, "(2"

    const-string/jumbo v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 942
    const-string/jumbo v0, "2 Foo"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 943
    const-string/jumbo v0, "(2) Foo"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 944
    const-string/jumbo v0, "(2 Foo"

    const-string/jumbo v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 945
    const-string/jumbo v0, "2Foo"

    const-string/jumbo v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 946
    const-string/jumbo v0, "(2)Foo"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 947
    const-string/jumbo v0, "200 Foo"

    const-string/jumbo v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 948
    const-string/jumbo v0, "(200) Foo"

    const-string/jumbo v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 949
    const-string/jumbo v0, "200Foo"

    const-string/jumbo v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 950
    const-string/jumbo v0, "(200)Foo"

    const-string/jumbo v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 951
    const-string/jumbo v0, "200)Foo"

    const-string/jumbo v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 952
    const-string/jumbo v0, "200) Foo"

    const-string/jumbo v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 938
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v3, 0x0

    .line 1039
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    .local v0, "map":Landroid/content/ContentValues;
    const-string/jumbo v2, "_data"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v2, "title"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string/jumbo v2, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1044
    const-string/jumbo v2, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1045
    const-string/jumbo v2, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v2, "is_drm"

    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1048
    const/4 v1, 0x0

    .line 1049
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 1050
    const-string/jumbo v2, "width"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1051
    const-string/jumbo v2, "height"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .end local v1    # "resolution":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_6

    .line 1056
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1057
    const-string/jumbo v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1058
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1057
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string/jumbo v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 1060
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 1059
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string/jumbo v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1062
    if-eqz v1, :cond_1

    .line 1063
    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :cond_1
    const-string/jumbo v2, "weather_ID"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    const-string/jumbo v2, "city_ID"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1068
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_2

    .line 1069
    const-string/jumbo v2, "latitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1070
    const-string/jumbo v2, "longitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1073
    :cond_2
    const-string/jumbo v2, "is_360_video"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1074
    const-string/jumbo v2, "recordingtype"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    const-string/jumbo v2, "recording_mode"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "type3dvideo"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_3
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "video_codec_info"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_4
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "audio_codec_info"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_5
    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    const-string/jumbo v2, "datetaken"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1106
    :cond_6
    :goto_2
    return-object v0

    .line 1058
    :cond_7
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_0

    .line 1060
    :cond_8
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_1

    .line 1080
    :cond_9
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1082
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1083
    const-string/jumbo v4, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 1084
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1083
    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string/jumbo v4, "album_artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 1086
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 1085
    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string/jumbo v4, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 1088
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 1087
    :goto_5
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string/jumbo v2, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v2, "genre"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string/jumbo v2, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-nez v4, :cond_e

    :goto_6
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1092
    const-string/jumbo v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1093
    const-string/jumbo v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1094
    const-string/jumbo v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1095
    const-string/jumbo v2, "recordingtype"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1096
    const-string/jumbo v2, "recording_mode"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1097
    const-string/jumbo v2, "bit_depth"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1098
    const-string/jumbo v2, "sampling_rate"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_a

    .line 1100
    const-string/jumbo v2, "latitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1101
    const-string/jumbo v2, "longitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1103
    :cond_a
    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    const-string/jumbo v2, "datetaken"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1084
    :cond_b
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_3

    :cond_c
    move-object v2, v3

    .line 1086
    goto/16 :goto_4

    .line 1088
    :cond_d
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_5

    .line 1091
    :cond_e
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_6
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    .prologue
    .line 612
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 613
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 614
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 615
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 617
    if-nez p7, :cond_3

    .line 618
    if-nez p8, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->-wrap1(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    const/16 p8, 0x1

    .line 621
    .end local p8    # "noMedia":Z
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 624
    if-eqz p2, :cond_1

    .line 625
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 629
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 630
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 631
    .local v13, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v13, :cond_2

    .line 632
    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 633
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 634
    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 639
    .end local v13    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 640
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 644
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 645
    .local v8, "beforeMakeEntryTime":J
    const/4 v2, 0x0

    .line 646
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get41(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 647
    move-object/from16 v12, p1

    .line 648
    .local v12, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 649
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 651
    :cond_4
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    check-cast v2, Landroid/media/MediaScanner$FileEntry;

    .line 655
    .end local v12    # "key":Ljava/lang/String;
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    :goto_0
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get35(Landroid/media/MediaScanner;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Landroid/media/MediaScanner;->-set12(Landroid/media/MediaScanner;J)J

    .line 657
    if-eqz v2, :cond_9

    iget-wide v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v10, p3, v4

    .line 658
    .local v10, "delta":J
    :goto_1
    const-wide/16 v4, 0x1

    cmp-long v3, v10, v4

    if-gtz v3, :cond_5

    const-wide/16 v4, -0x1

    cmp-long v3, v10, v4

    if-gez v3, :cond_a

    :cond_5
    const/4 v14, 0x1

    .line 659
    .local v14, "wasModified":Z
    :goto_2
    if-eqz v2, :cond_6

    if-eqz v14, :cond_7

    .line 660
    :cond_6
    if-eqz v14, :cond_b

    .line 661
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 667
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 670
    :cond_7
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get26(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 671
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get24(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    const/4 v3, 0x0

    return-object v3

    .line 653
    .end local v10    # "delta":J
    .end local v14    # "wasModified":Z
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_8
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_0

    .line 657
    :cond_9
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 658
    .restart local v10    # "delta":J
    :cond_a
    const/4 v14, 0x0

    .restart local v14    # "wasModified":Z
    goto :goto_2

    .line 663
    :cond_b
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V

    .line 665
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz p7, :cond_c

    const/16 v3, 0x3001

    :goto_4
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    .line 677
    :cond_d
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 678
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 679
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 680
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 681
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 682
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 683
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 684
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 685
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 686
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 687
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 688
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 689
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 690
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 691
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 692
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 693
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    .line 694
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    .line 695
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    .line 696
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    .line 697
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    .line 698
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    .line 699
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    .line 700
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    .line 701
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    .line 702
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    .line 703
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    .line 704
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    .line 705
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    .line 706
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    .line 708
    return-object v2
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 31
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    .prologue
    .line 728
    const/16 v30, 0x0

    .local v30, "result":Landroid/net/Uri;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p9

    .line 731
    :try_start_0
    invoke-virtual/range {v5 .. v13}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v5

    .line 734
    .local v5, "entry":Landroid/media/MediaScanner$FileEntry;
    if-nez v5, :cond_0

    .line 735
    const/4 v4, 0x0

    return-object v4

    .line 741
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get23(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 742
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 745
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get20(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 746
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get9(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 748
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 747
    if-nez v4, :cond_6

    .line 749
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get13(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 750
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 747
    if-nez v4, :cond_6

    .line 751
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 752
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 747
    if-nez v4, :cond_6

    .line 753
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get27(Landroid/media/MediaScanner;)I

    move-result v4

    const/4 v11, 0x1

    if-le v4, v11, :cond_7

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 755
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 746
    if-eqz v4, :cond_7

    .line 756
    :cond_6
    const-string/jumbo v4, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "forcing rescan of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 757
    const-string/jumbo v12, " since ringtone setting didn\'t finish"

    .line 756
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/16 p8, 0x1

    .line 763
    .end local p8    # "scanAlways":Z
    :cond_7
    if-eqz v5, :cond_a

    iget-boolean v4, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v4, :cond_8

    if-eqz p8, :cond_a

    .line 764
    :cond_8
    if-eqz p9, :cond_13

    .line 765
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 766
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    .line 767
    .local v26, "lowpath":Ljava/lang/String;
    const-string/jumbo v4, "/ringtones/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_b

    const/4 v6, 0x1

    .line 768
    .local v6, "ringtones":Z
    :goto_0
    const-string/jumbo v4, "/notifications/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c

    const/4 v7, 0x1

    .line 769
    .local v7, "notifications":Z
    :goto_1
    const-string/jumbo v4, "/alarms/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d

    const/4 v8, 0x1

    .line 770
    .local v8, "alarms":Z
    :goto_2
    const-string/jumbo v4, "/podcasts/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_e

    const/4 v10, 0x1

    .line 771
    .local v10, "podcasts":Z
    :goto_3
    const-string/jumbo v4, "/music/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_f

    .line 772
    if-nez v6, :cond_9

    if-eqz v7, :cond_10

    :cond_9
    const/4 v9, 0x0

    .local v9, "music":Z
    :goto_4
    move-object/from16 v4, p0

    .line 774
    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v30

    .line 829
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v26    # "lowpath":Ljava/lang/String;
    .end local v30    # "result":Landroid/net/Uri;
    :cond_a
    :goto_5
    return-object v30

    .line 767
    .restart local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v26    # "lowpath":Ljava/lang/String;
    .restart local v30    # "result":Landroid/net/Uri;
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "ringtones":Z
    goto :goto_0

    .line 768
    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "notifications":Z
    goto :goto_1

    .line 769
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "alarms":Z
    goto :goto_2

    .line 770
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "podcasts":Z
    goto :goto_3

    .line 771
    :cond_f
    const/4 v9, 0x1

    goto :goto_4

    .line 772
    :cond_10
    if-nez v8, :cond_9

    if-eqz v10, :cond_11

    const/4 v4, 0x0

    :goto_6
    move v9, v4

    goto :goto_4

    :cond_11
    const/4 v4, 0x1

    goto :goto_6

    .line 776
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v10    # "podcasts":Z
    .end local v26    # "lowpath":Ljava/lang/String;
    :cond_12
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v11 .. v17}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v30

    .local v30, "result":Landroid/net/Uri;
    goto :goto_5

    .line 779
    .local v30, "result":Landroid/net/Uri;
    :cond_13
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    .line 780
    .restart local v26    # "lowpath":Ljava/lang/String;
    const-string/jumbo v4, "/ringtones/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_19

    const/4 v6, 0x1

    .line 781
    .restart local v6    # "ringtones":Z
    :goto_7
    const-string/jumbo v4, "/notifications/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1a

    const/4 v7, 0x1

    .line 782
    .restart local v7    # "notifications":Z
    :goto_8
    const-string/jumbo v4, "/alarms/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1b

    const/4 v8, 0x1

    .line 783
    .restart local v8    # "alarms":Z
    :goto_9
    const-string/jumbo v4, "/podcasts/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1c

    const/4 v10, 0x1

    .line 784
    .restart local v10    # "podcasts":Z
    :goto_a
    const-string/jumbo v4, "/music/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1d

    .line 785
    if-nez v6, :cond_14

    if-eqz v7, :cond_1e

    :cond_14
    const/4 v9, 0x0

    .line 787
    .local v9, "music":Z
    :goto_b
    const-wide/16 v18, 0x0

    .local v18, "beforeMetaParsingTime":J
    const-wide/16 v28, 0x0

    .line 788
    .local v28, "metaParsingTime":J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v22

    .line 789
    .local v22, "isaudio":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v24

    .line 790
    .local v24, "isvideo":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v23

    .line 793
    .local v23, "isimage":Z
    if-nez v22, :cond_15

    if-eqz v24, :cond_16

    .line 794
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v4, v0, v1, v2}, Landroid/media/MediaScanner;->-wrap5(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v28, v12, v18

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get36(Landroid/media/MediaScanner;)J

    move-result-wide v12

    add-long v12, v12, v28

    invoke-static {v4, v12, v13}, Landroid/media/MediaScanner;->-set13(Landroid/media/MediaScanner;J)J

    .line 800
    :cond_16
    if-eqz v23, :cond_17

    .line 801
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v11, 0x1f

    if-eq v4, v11, :cond_17

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 803
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v28, v12, v18

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get29(Landroid/media/MediaScanner;)J

    move-result-wide v12

    add-long v12, v12, v28

    invoke-static {v4, v12, v13}, Landroid/media/MediaScanner;->-set6(Landroid/media/MediaScanner;J)J

    .line 809
    :cond_17
    const-string/jumbo v4, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    .line 810
    .local v25, "lastDot":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_18

    if-lez v25, :cond_18

    .line 811
    const-wide/16 v12, 0x0

    cmp-long v4, v18, v12

    if-eqz v4, :cond_18

    const-wide/16 v12, 0x0

    cmp-long v4, v28, v12

    if-eqz v4, :cond_18

    .line 812
    add-int/lit8 v4, v25, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    .line 813
    .local v21, "extention":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/media/MediaScanner$FileParsingTime;

    .line 814
    .local v27, "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v27, :cond_1f

    .line 815
    invoke-virtual/range {v27 .. v29}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v21    # "extention":Ljava/lang/String;
    .end local v27    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    :cond_18
    :goto_c
    move-object/from16 v4, p0

    .line 821
    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v30

    .local v30, "result":Landroid/net/Uri;
    goto/16 :goto_5

    .line 780
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v18    # "beforeMetaParsingTime":J
    .end local v22    # "isaudio":Z
    .end local v23    # "isimage":Z
    .end local v24    # "isvideo":Z
    .end local v25    # "lastDot":I
    .end local v28    # "metaParsingTime":J
    .local v30, "result":Landroid/net/Uri;
    :cond_19
    const/4 v6, 0x0

    .restart local v6    # "ringtones":Z
    goto/16 :goto_7

    .line 781
    :cond_1a
    const/4 v7, 0x0

    .restart local v7    # "notifications":Z
    goto/16 :goto_8

    .line 782
    :cond_1b
    const/4 v8, 0x0

    .restart local v8    # "alarms":Z
    goto/16 :goto_9

    .line 783
    :cond_1c
    const/4 v10, 0x0

    .restart local v10    # "podcasts":Z
    goto/16 :goto_a

    .line 784
    :cond_1d
    const/4 v9, 0x1

    .restart local v9    # "music":Z
    goto/16 :goto_b

    .line 785
    .end local v9    # "music":Z
    :cond_1e
    if-nez v8, :cond_14

    if-nez v10, :cond_14

    const/4 v9, 0x1

    .restart local v9    # "music":Z
    goto/16 :goto_b

    .line 818
    .restart local v18    # "beforeMetaParsingTime":J
    .restart local v21    # "extention":Ljava/lang/String;
    .restart local v22    # "isaudio":Z
    .restart local v23    # "isimage":Z
    .restart local v24    # "isvideo":Z
    .restart local v25    # "lastDot":I
    .restart local v27    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .restart local v28    # "metaParsingTime":J
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v11, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 824
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v18    # "beforeMetaParsingTime":J
    .end local v21    # "extention":Ljava/lang/String;
    .end local v22    # "isaudio":Z
    .end local v23    # "isimage":Z
    .end local v24    # "isvideo":Z
    .end local v25    # "lastDot":I
    .end local v26    # "lowpath":Ljava/lang/String;
    .end local v27    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .end local v28    # "metaParsingTime":J
    :catch_0
    move-exception v20

    .line 825
    .local v20, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MediaScanner"

    const-string/jumbo v11, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v20

    invoke-static {v4, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "genreTagValue"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xff

    const/16 v11, 0x29

    const/4 v10, 0x0

    .line 956
    if-nez p1, :cond_0

    .line 957
    return-object v10

    .line 959
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 961
    .local v5, "length":I
    if-lez v5, :cond_6

    .line 962
    const/4 v7, 0x0

    .line 963
    .local v7, "parenthesized":Z
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 964
    .local v6, "number":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 965
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 966
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 967
    .local v0, "c":C
    if-nez v4, :cond_1

    const/16 v9, 0x28

    if-ne v0, v9, :cond_1

    .line 968
    const/4 v7, 0x1

    .line 965
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 969
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 970
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 975
    .end local v0    # "c":C
    :cond_2
    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 976
    :goto_2
    if-eqz v7, :cond_5

    if-ne v1, v11, :cond_5

    .line 979
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 980
    .local v3, "genreIndex":S
    if-ltz v3, :cond_6

    .line 981
    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v3, v9, :cond_7

    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    if-eqz v9, :cond_7

    .line 982
    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 975
    .end local v3    # "genreIndex":S
    :cond_4
    const/16 v1, 0x20

    .local v1, "charAfterNumber":C
    goto :goto_2

    .line 977
    .end local v1    # "charAfterNumber":C
    :cond_5
    if-nez v7, :cond_6

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    .line 976
    if-nez v9, :cond_3

    .line 1005
    .end local v4    # "i":I
    .end local v6    # "number":Ljava/lang/StringBuffer;
    .end local v7    # "parenthesized":Z
    :cond_6
    :goto_3
    return-object p1

    .line 983
    .restart local v3    # "genreIndex":S
    .restart local v4    # "i":I
    .restart local v6    # "number":Ljava/lang/StringBuffer;
    .restart local v7    # "parenthesized":Z
    :cond_7
    if-ne v3, v12, :cond_8

    .line 984
    return-object v10

    .line 985
    :cond_8
    if-ge v3, v12, :cond_a

    add-int/lit8 v9, v4, 0x1

    if-ge v9, v5, :cond_a

    .line 988
    if-eqz v7, :cond_9

    if-ne v1, v11, :cond_9

    .line 989
    add-int/lit8 v4, v4, 0x1

    .line 991
    :cond_9
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 992
    .local v8, "ret":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    .line 993
    return-object v8

    .line 997
    .end local v8    # "ret":Ljava/lang/String;
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    return-object v9

    .line 1000
    .end local v3    # "genreIndex":S
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_3
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 851
    const-string/jumbo v4, "title"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "title;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 855
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 850
    :cond_1
    :goto_0
    return-void

    .line 856
    :cond_2
    const-string/jumbo v4, "artist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "artist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 857
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 858
    :cond_4
    const-string/jumbo v4, "albumartist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "albumartist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 859
    const-string/jumbo v4, "band"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 858
    if-nez v4, :cond_5

    .line 859
    const-string/jumbo v4, "band;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 858
    if-eqz v4, :cond_6

    .line 860
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 861
    :cond_6
    const-string/jumbo v4, "album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "album;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 862
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 863
    :cond_8
    const-string/jumbo v4, "composer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "composer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 864
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 865
    :cond_a
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get25(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 866
    const-string/jumbo v4, "genre"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "genre;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 865
    if-eqz v4, :cond_c

    .line 867
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 868
    :cond_c
    const-string/jumbo v4, "year"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "year;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 869
    :cond_d
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 870
    :cond_e
    const-string/jumbo v4, "tracknumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "tracknumber;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 873
    :cond_f
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 874
    .local v1, "num":I
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 875
    .end local v1    # "num":I
    :cond_10
    const-string/jumbo v4, "discnumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 876
    const-string/jumbo v4, "set"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 875
    if-nez v4, :cond_11

    .line 876
    const-string/jumbo v4, "set;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 875
    if-eqz v4, :cond_12

    .line 879
    :cond_11
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 880
    .restart local v1    # "num":I
    mul-int/lit16 v2, v1, 0x3e8

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 881
    .end local v1    # "num":I
    :cond_12
    const-string/jumbo v4, "duration"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 882
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 883
    :cond_13
    const-string/jumbo v4, "writer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "writer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 884
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 885
    :cond_15
    const-string/jumbo v4, "compilation"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 886
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 887
    :cond_16
    const-string/jumbo v4, "isdrm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 888
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_17

    :goto_1
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v2, v3

    goto :goto_1

    .line 889
    :cond_18
    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 890
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 891
    :cond_19
    const-string/jumbo v2, "height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 892
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0

    .line 893
    :cond_1a
    const-string/jumbo v2, "recordingtype"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 894
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    goto/16 :goto_0

    .line 895
    :cond_1b
    const-string/jumbo v2, "recordingmode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 896
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    goto/16 :goto_0

    .line 897
    :cond_1c
    const-string/jumbo v2, "weather"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 898
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    goto/16 :goto_0

    .line 899
    :cond_1d
    const-string/jumbo v2, "cityid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 900
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    goto/16 :goto_0

    .line 901
    :cond_1e
    const-string/jumbo v2, "location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 902
    const/16 v2, 0x2d

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 903
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    .line 904
    const/16 v2, 0x2b

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 906
    :cond_1f
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 907
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    .line 908
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    .line 909
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    goto/16 :goto_0

    .line 910
    .end local v0    # "index":I
    :cond_20
    const-string/jumbo v2, "samplingrate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 911
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    goto/16 :goto_0

    .line 912
    :cond_21
    const-string/jumbo v2, "bitspersample"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 913
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    goto/16 :goto_0

    .line 914
    :cond_22
    const-string/jumbo v2, "is360video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 915
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    goto/16 :goto_0

    .line 916
    :cond_23
    const-string/jumbo v2, "3dvideotype"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 917
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    goto/16 :goto_0

    .line 918
    :cond_24
    const-string/jumbo v2, "videocodecinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 919
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 920
    :cond_25
    const-string/jumbo v2, "audiocodecinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 921
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 922
    :cond_26
    const-string/jumbo v2, "creationtime"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 923
    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    goto/16 :goto_0
.end method

.method public isNoMediaPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 713
    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    .line 721
    if-eqz p6, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->-get31(Landroid/media/MediaScanner;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/media/MediaScanner;->-set8(Landroid/media/MediaScanner;J)J

    .line 723
    :goto_0
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 718
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->-get32(Landroid/media/MediaScanner;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/media/MediaScanner;->-set9(Landroid/media/MediaScanner;J)J

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1021
    const-string/jumbo v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1021
    if-eqz v0, :cond_0

    .line 1026
    return-void

    .line 1028
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1029
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 1020
    return-void
.end method
