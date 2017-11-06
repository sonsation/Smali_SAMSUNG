.class public Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;
.super Ljava/lang/Object;
.source "PrefetchChunkDataCallback.java"


# static fields
.field private static final EXTENSION_AAC:Ljava/lang/String; = "aac"

.field private static final EXTENSION_JPG:Ljava/lang/String; = "jpg"

.field private static final EXTENSION_M4A:Ljava/lang/String; = "m4a"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleHttpResponse(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v24, Ljava/util/zip/ZipInputStream;

    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v24 .. v25}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v24, "zis":Ljava/util/zip/ZipInputStream;
    const/16 v16, 0x0

    .line 50
    .local v16, "genre_id":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v22

    .local v22, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v22, :cond_5

    .line 51
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v25

    if-nez v25, :cond_0

    .line 53
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v9, v0, [B

    .line 56
    .local v9, "buffer":[B
    :goto_1
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v11

    .local v11, "count":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_1

    .line 57
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v9, v0, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 127
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "buffer":[B
    .end local v11    # "count":I
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v12

    .line 130
    .local v12, "e":Ljava/security/InvalidParameterException;
    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v12    # "e":Ljava/security/InvalidParameterException;
    :catchall_0
    move-exception v25

    .line 146
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 151
    throw v25

    .line 59
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "buffer":[B
    .restart local v11    # "count":I
    .restart local v22    # "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    .line 60
    .local v23, "zipEntryFilename":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 64
    .local v10, "bytes":[B
    const-string v25, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 69
    .local v15, "filenameBits":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0
    :try_end_3
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 71
    const/16 v25, 0x0

    :try_start_4
    aget-object v16, v15, v25
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/InvalidParameterException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :goto_2
    const/16 v25, 0x1

    :try_start_5
    aget-object v18, v15, v25

    .line 77
    .local v18, "stationId":Ljava/lang/String;
    const/16 v25, 0x2

    aget-object v14, v15, v25

    .line 80
    .local v14, "filename":Ljava/lang/String;
    const-string v25, "\\."

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 81
    .local v17, "split":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 82
    const/16 v25, 0x0

    aget-object v21, v17, v25

    .line 83
    .local v21, "trackId":Ljava/lang/String;
    const/16 v25, 0x1

    aget-object v13, v17, v25

    .line 86
    .local v13, "extension":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v20

    .line 87
    .local v20, "track":Lcom/samsung/android/app/music/common/model/Track;
    if-eqz v20, :cond_4

    .line 88
    const-string v25, "jpg"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 89
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/Track;->getThumbnailId()J

    move-result-wide v4

    .line 90
    .local v4, "albumId":J
    const-wide/16 v26, 0x0

    cmp-long v25, v4, v26

    if-lez v25, :cond_3

    .line 91
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    .local v19, "targetStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v7, "bis":Ljava/io/BufferedInputStream;
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 95
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 96
    const v25, 0x7f0d0061

    .line 97
    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v25

    const v26, 0x80002

    .line 99
    invoke-static/range {v26 .. v26}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v26

    .line 98
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v25

    .line 101
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->addToDiskCache(Landroid/graphics/Bitmap;)V
    :try_end_5
    .catch Ljava/security/InvalidParameterException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 131
    .end local v4    # "albumId":J
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "buffer":[B
    .end local v10    # "bytes":[B
    .end local v11    # "count":I
    .end local v13    # "extension":Ljava/lang/String;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v15    # "filenameBits":[Ljava/lang/String;
    .end local v17    # "split":[Ljava/lang/String;
    .end local v18    # "stationId":Ljava/lang/String;
    .end local v19    # "targetStream":Ljava/io/InputStream;
    .end local v20    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .end local v21    # "trackId":Ljava/lang/String;
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    .end local v23    # "zipEntryFilename":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 134
    .local v12, "e":Ljava/lang/NullPointerException;
    :try_start_6
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    .end local v12    # "e":Ljava/lang/NullPointerException;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "buffer":[B
    .restart local v10    # "bytes":[B
    .restart local v11    # "count":I
    .restart local v15    # "filenameBits":[Ljava/lang/String;
    .restart local v22    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v23    # "zipEntryFilename":Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 73
    .local v12, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/security/InvalidParameterException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 135
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "buffer":[B
    .end local v10    # "bytes":[B
    .end local v11    # "count":I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "filenameBits":[Ljava/lang/String;
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    .end local v23    # "zipEntryFilename":Ljava/lang/String;
    :catch_3
    move-exception v12

    .line 136
    .local v12, "e":Ljava/io/IOException;
    :try_start_8
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 103
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v4    # "albumId":J
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "buffer":[B
    .restart local v10    # "bytes":[B
    .restart local v11    # "count":I
    .restart local v13    # "extension":Ljava/lang/String;
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v15    # "filenameBits":[Ljava/lang/String;
    .restart local v17    # "split":[Ljava/lang/String;
    .restart local v18    # "stationId":Ljava/lang/String;
    .restart local v19    # "targetStream":Ljava/io/InputStream;
    .restart local v20    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .restart local v21    # "trackId":Ljava/lang/String;
    .restart local v22    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v23    # "zipEntryFilename":Ljava/lang/String;
    :cond_2
    :try_start_9
    sget-object v25, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;->LOG_TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleHttpResponse >> bitmap is null. - ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/security/InvalidParameterException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 137
    .end local v4    # "albumId":J
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "buffer":[B
    .end local v10    # "bytes":[B
    .end local v11    # "count":I
    .end local v13    # "extension":Ljava/lang/String;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v15    # "filenameBits":[Ljava/lang/String;
    .end local v17    # "split":[Ljava/lang/String;
    .end local v18    # "stationId":Ljava/lang/String;
    .end local v19    # "targetStream":Ljava/io/InputStream;
    .end local v20    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .end local v21    # "trackId":Ljava/lang/String;
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    .end local v23    # "zipEntryFilename":Ljava/lang/String;
    :catch_4
    move-exception v12

    .line 138
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 108
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "albumId":J
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "buffer":[B
    .restart local v10    # "bytes":[B
    .restart local v11    # "count":I
    .restart local v13    # "extension":Ljava/lang/String;
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v15    # "filenameBits":[Ljava/lang/String;
    .restart local v17    # "split":[Ljava/lang/String;
    .restart local v18    # "stationId":Ljava/lang/String;
    .restart local v20    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .restart local v21    # "trackId":Ljava/lang/String;
    .restart local v22    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v23    # "zipEntryFilename":Ljava/lang/String;
    :cond_3
    :try_start_b
    sget-object v25, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;->LOG_TAG:Ljava/lang/String;

    const-string v26, "handleHttpResponse >> albumId is null."

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v4    # "albumId":J
    :cond_4
    sget-object v25, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;->LOG_TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleHttpResponse >> queried track is null!!! : trackId - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", stationId - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "buffer":[B
    .end local v10    # "bytes":[B
    .end local v11    # "count":I
    .end local v13    # "extension":Ljava/lang/String;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v15    # "filenameBits":[Ljava/lang/String;
    .end local v17    # "split":[Ljava/lang/String;
    .end local v18    # "stationId":Ljava/lang/String;
    .end local v20    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .end local v21    # "trackId":Ljava/lang/String;
    .end local v23    # "zipEntryFilename":Ljava/lang/String;
    :cond_5
    if-eqz v16, :cond_6

    .line 122
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updatePrefetched(Ljava/lang/String;I)Z

    .line 123
    sget-object v25, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;->LOG_TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleHttpResponse >> genre_id ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") is prefetched"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/security/InvalidParameterException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 146
    :goto_3
    :try_start_c
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 155
    return-void

    .line 125
    :cond_6
    :try_start_d
    sget-object v25, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;->LOG_TAG:Ljava/lang/String;

    const-string v26, "handleHttpResponse >> error while genre prefetching.."

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/security/InvalidParameterException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 147
    :catch_5
    move-exception v12

    .line 151
    .local v12, "e":Ljava/io/IOException;
    throw v12

    .line 147
    .end local v12    # "e":Ljava/io/IOException;
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    :catch_6
    move-exception v12

    .line 151
    .restart local v12    # "e":Ljava/io/IOException;
    throw v12
.end method
