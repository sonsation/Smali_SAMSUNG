.class Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;
.super Landroid/os/AsyncTask;
.source "CapturePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/capture/CapturePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field captureTime:J

.field final synthetic this$0:Lcom/android/launcher3/util/capture/CapturePreview;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/capture/CapturePreview;Landroid/graphics/Bitmap;J)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "captureTime"    # J

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    .line 211
    iput-wide p3, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->captureTime:J

    .line 212
    return-void
.end method

.method private getTargetFile(Z)Ljava/io/File;
    .locals 5
    .param p1, "land"    # Z

    .prologue
    .line 281
    iget-object v3, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v4, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-static {v4}, Lcom/android/launcher3/util/capture/CapturePreview;->access$100(Lcom/android/launcher3/util/capture/CapturePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/util/capture/CapturePreview;->access$300(Lcom/android/launcher3/util/capture/CapturePreview;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "cacheDir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 283
    const/4 v1, 0x0

    .line 287
    :goto_0
    return-object v1

    .line 285
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v3, "/homescreenPreviewLand.png"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "file":Ljava/io/File;
    goto :goto_0

    .line 285
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_1
    const-string v3, "/homescreenPreview.png"

    goto :goto_1
.end method

.method private saveCapturedBitmap(Landroid/graphics/Bitmap;J)Z
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "captureTime"    # J

    .prologue
    const/4 v4, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 241
    if-nez p1, :cond_1

    .line 242
    const-string v4, "CapturePreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to save because bitmap was wrong : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    :goto_0
    return v5

    .line 246
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 248
    const-string v6, "CapturePreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start save : compress capture bitmap : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_2

    .line 251
    const-string v4, "CapturePreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to save because size was too small : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    move v2, v4

    .line 260
    .local v2, "isLand":Z
    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->saveToFileCaptureScreen(Ljava/io/ByteArrayOutputStream;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    if-eqz v2, :cond_6

    const-string v0, "homescreenPreview_capturetime"

    .line 266
    .local v0, "captureTimeStr":Ljava/lang/String;
    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-static {v5}, Lcom/android/launcher3/util/capture/CapturePreview;->access$100(Lcom/android/launcher3/util/capture/CapturePreview;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 267
    iget-object v5, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-static {v5}, Lcom/android/launcher3/util/capture/CapturePreview;->access$100(Lcom/android/launcher3/util/capture/CapturePreview;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 274
    iget-object v6, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v5, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-static {v5}, Lcom/android/launcher3/util/capture/CapturePreview;->access$200(Lcom/android/launcher3/util/capture/CapturePreview;)I

    move-result v7

    if-eqz v2, :cond_7

    const/4 v5, -0x3

    :goto_4
    and-int/2addr v5, v7

    invoke-static {v6, v5}, Lcom/android/launcher3/util/capture/CapturePreview;->access$202(Lcom/android/launcher3/util/capture/CapturePreview;I)I

    :cond_4
    move v5, v4

    .line 277
    goto/16 :goto_0

    .end local v0    # "captureTimeStr":Ljava/lang/String;
    .end local v2    # "isLand":Z
    :cond_5
    move v2, v5

    .line 259
    goto :goto_1

    .line 264
    .restart local v2    # "isLand":Z
    :cond_6
    const-string v0, "homescreenPreview_capturetime_land"

    goto :goto_2

    .line 269
    .restart local v0    # "captureTimeStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CapturePreview"

    const-string v6, "fail to write the capture time to setting db"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v5, -0x2

    goto :goto_4
.end method

.method private saveToFileCaptureScreen(Ljava/io/ByteArrayOutputStream;Z)Z
    .locals 9
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "land"    # Z

    .prologue
    const/4 v5, 0x0

    .line 292
    invoke-direct {p0, p2}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->getTargetFile(Z)Ljava/io/File;

    move-result-object v1

    .line 294
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 295
    iget-object v6, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/util/capture/CapturePreview;->access$402(Lcom/android/launcher3/util/capture/CapturePreview;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    invoke-direct {p0, p2}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->getTargetFile(Z)Ljava/io/File;

    move-result-object v1

    .line 300
    :cond_0
    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "filePath":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 307
    const/4 v3, 0x0

    .line 309
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 311
    const-string v6, "CapturePreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save result :  path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 312
    const/4 v5, 0x1

    .line 321
    if-eqz v4, :cond_1

    .line 322
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 323
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 330
    .end local v4    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_1
    return v5

    .line 303
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "filePath":Ljava/lang/String;
    goto :goto_0

    .line 325
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "CapturePreview"

    const-string v7, "IOException OutputStream.flush : "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 314
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v6, "CapturePreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    if-eqz v3, :cond_1

    .line 322
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 323
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 325
    :catch_2
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "CapturePreview"

    const-string v7, "IOException OutputStream.flush : "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 316
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 317
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v6, "CapturePreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException ByteArrayOutputStream.writeTo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    if-eqz v3, :cond_1

    .line 322
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 323
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 325
    :catch_4
    move-exception v0

    .line 326
    const-string v6, "CapturePreview"

    const-string v7, "IOException OutputStream.flush : "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 321
    :goto_4
    if-eqz v3, :cond_3

    .line 322
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 323
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 327
    :cond_3
    :goto_5
    throw v5

    .line 325
    :catch_5
    move-exception v0

    .line 326
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "CapturePreview"

    const-string v7, "IOException OutputStream.flush : "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 316
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 313
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->captureTime:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->saveCapturedBitmap(Landroid/graphics/Bitmap;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "CapturePreview"

    const-string v1, "cancelled capturetask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    .line 226
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 230
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, "CapturePreview"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    .line 238
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
