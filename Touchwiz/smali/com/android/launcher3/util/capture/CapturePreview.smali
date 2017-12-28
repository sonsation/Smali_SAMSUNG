.class public Lcom/android/launcher3/util/capture/CapturePreview;
.super Ljava/lang/Object;
.source "CapturePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;,
        Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_MIN_SIZE:I = 0x2710

.field private static final DEFAULT_CAPTURE_DELAY:I = 0xbb8

.field private static final DIRTY_LAND:I = 0x2

.field private static final DIRTY_PORT:I = 0x1

.field private static final FILE_NAME_LAND:Ljava/lang/String; = "/homescreenPreviewLand.png"

.field private static final FILE_NAME_PORT:Ljava/lang/String; = "/homescreenPreview.png"

.field private static final KEY_FILE_TIME_LAND:Ljava/lang/String; = "homescreenPreview_capturetime_land"

.field private static final KEY_FILE_TIME_PORT:Ljava/lang/String; = "homescreenPreview_capturetime"

.field private static final MSG_REQUEST_CAPTURE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CapturePreview"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDirtyFlags:I

.field private mExternalCacheDirPath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

.field private mSaveTask:Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mDirtyFlags:I

    .line 74
    iput-object p1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/launcher3/util/capture/CapturePreview$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/util/capture/CapturePreview$1;-><init>(Lcom/android/launcher3/util/capture/CapturePreview;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/util/capture/CapturePreview;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/util/capture/CapturePreview;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/launcher3/util/capture/CapturePreview;->startCaptureScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/capture/CapturePreview;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/capture/CapturePreview;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/capture/CapturePreview;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/capture/CapturePreview;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mDirtyFlags:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/util/capture/CapturePreview;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/util/capture/CapturePreview;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mDirtyFlags:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/capture/CapturePreview;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/capture/CapturePreview;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/capture/CapturePreview;->getExternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/util/capture/CapturePreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/util/capture/CapturePreview;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mExternalCacheDirPath:Ljava/lang/String;

    return-object p1
.end method

.method private cancelCompressTask()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mSaveTask:Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mSaveTask:Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->cancel(Z)Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mSaveTask:Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;

    .line 139
    :cond_0
    return-void
.end method

.method private getCaptureBitmap(Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "targetView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 172
    if-nez p1, :cond_0

    move-object v0, v7

    .line 201
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 178
    .local v2, "childView":Landroid/view/View;
    if-nez v2, :cond_1

    .line 179
    const-string v8, "CapturePreview"

    const-string v9, "child views were not ready"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 180
    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    .line 184
    .local v6, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    .line 185
    .local v3, "viewHeight":I
    if-lez v6, :cond_2

    if-gtz v3, :cond_3

    .line 186
    :cond_2
    const-string v8, "CapturePreview"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "targetView might not have been measured yet"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 187
    goto :goto_0

    .line 190
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 191
    .local v4, "cur":J
    const-string v8, "CapturePreview"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start capture - drawaingEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isDrawingCacheEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 194
    const-string v8, "CapturePreview"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "capture tagetview width : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 198
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    const-string v7, "CapturePreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "capture took  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getExternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mExternalCacheDirPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 337
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mExternalCacheDirPath:Ljava/lang/String;

    .line 343
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mExternalCacheDirPath:Ljava/lang/String;

    return-object v1

    .line 340
    .restart local v0    # "dir":Ljava/io/File;
    :cond_1
    const-string v1, "CapturePreview"

    const-string v2, "Fail to getExternalCacheDirPath"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getOrientation()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private notifyCapture(ZI)V
    .locals 1
    .param p1, "immediate"    # Z
    .param p2, "delay"    # I

    .prologue
    .line 92
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mDirtyFlags:I

    .line 93
    if-eqz p1, :cond_1

    .line 94
    if-gez p2, :cond_0

    const/16 p2, 0xbb8

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/util/capture/CapturePreview;->getOrientation()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/util/capture/CapturePreview;->sendMessageForCapture(II)V

    .line 97
    :cond_1
    return-void
.end method

.method private notifyCaptureIfNecessary(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    const/4 v2, 0x1

    .line 104
    invoke-direct {p0}, Lcom/android/launcher3/util/capture/CapturePreview;->getOrientation()I

    move-result v0

    .line 105
    .local v0, "orientation":I
    iget v1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mDirtyFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mDirtyFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 107
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/util/capture/CapturePreview;->notifyCapture(ZI)V

    .line 109
    :cond_2
    return-void
.end method

.method private sendMessageForCapture(II)V
    .locals 4
    .param p1, "delay"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string v1, "CapturePreview"

    const-string v2, "sendMessageForCapture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/android/launcher3/util/capture/CapturePreview;->cancelCompressTask()V

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 125
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 126
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 128
    return-void
.end method

.method private startCaptureScreen()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    iget-object v5, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    invoke-interface {v5}, Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;->canCapture()Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    :cond_0
    const-string v3, "CapturePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCaptureScreen fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v2, 0x0

    .line 148
    .local v2, "valid":Z
    invoke-direct {p0}, Lcom/android/launcher3/util/capture/CapturePreview;->getOrientation()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 149
    iget v5, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mDirtyFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v2, v3

    .line 154
    :goto_1
    if-nez v2, :cond_5

    .line 155
    const-string v3, "CapturePreview"

    const-string v4, "startCaptureScreen fail becuasue current orientation was not requested"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v4

    .line 149
    goto :goto_1

    .line 151
    :cond_3
    iget v5, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mDirtyFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    move v2, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    .line 159
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    invoke-interface {v3}, Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;->getTargetView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 160
    .local v1, "targetView":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lcom/android/launcher3/util/capture/CapturePreview;->getCaptureBitmap(Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_6

    .line 163
    invoke-direct {p0}, Lcom/android/launcher3/util/capture/CapturePreview;->cancelCompressTask()V

    .line 164
    new-instance v3, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, p0, v0, v6, v7}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;-><init>(Lcom/android/launcher3/util/capture/CapturePreview;Landroid/graphics/Bitmap;J)V

    iput-object v3, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mSaveTask:Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;

    .line 165
    iget-object v3, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mSaveTask:Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 167
    :cond_6
    const-string v3, "CapturePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capture fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public notifyCapture(Z)V
    .locals 1
    .param p1, "immediate"    # Z

    .prologue
    .line 88
    const/16 v0, 0xbb8

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/capture/CapturePreview;->notifyCapture(ZI)V

    .line 89
    return-void
.end method

.method public notifyCaptureIfNecessary()V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/capture/CapturePreview;->notifyCaptureIfNecessary(I)V

    .line 101
    return-void
.end method

.method public setListener(Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    .line 113
    return-void
.end method

.method public stopCapture()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 117
    return-void
.end method
