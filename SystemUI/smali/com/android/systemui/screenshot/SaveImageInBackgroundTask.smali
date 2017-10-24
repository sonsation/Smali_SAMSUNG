.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mTickerAddSpace:Z


# instance fields
.field private currentUserHandle:Landroid/os/UserHandle;

.field mAm:Landroid/app/IActivityManager;

.field private mCapturedOrigin:I

.field private mDisplayNotiIcon:Z

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mImageDisplayName:Ljava/lang/String;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mIsSavingFailed:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mRotation:I

.field private mScreenCaptureTime:Ljava/lang/String;

.field private final mScreenshotDir:Ljava/io/File;

.field private mScrollCaptureAvailable:Z

.field private mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

.field private mScrollCaptureTransactionId:J

.field private mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRotation:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    .line 127
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 174
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 135
    new-instance v24, Landroid/os/Binder;

    invoke-direct/range {v24 .. v24}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    .line 136
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    .line 158
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    .line 159
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 178
    .local v21, "r":Landroid/content/res/Resources;
    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    .line 179
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v23

    .line 180
    .local v23, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v24, "2.0"

    const-string/jumbo v25, "version"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 181
    const-string/jumbo v24, "persona"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/SemPersonaManager;

    .line 182
    .local v11, "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v11}, Lcom/samsung/android/knox/SemPersonaManager;->getForegroundUser()I

    move-result v5

    .line 183
    .local v5, "currentUser":I
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 184
    new-instance v24, Landroid/os/UserHandle;

    invoke-virtual {v11}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v25

    const/16 v26, 0x0

    aget v25, v25, v26

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    .line 192
    .end local v5    # "currentUser":I
    .end local v11    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    const/16 v27, 0x1

    invoke-interface/range {v24 .. v27}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 193
    sget-object v24, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "SaveImageInBackgroundTask setProcessForeground true"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 199
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string/jumbo v25, "yyyyMMdd-HHmmss"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v25, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v26, v0

    invoke-direct/range {v25 .. v27}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "imageDate":Ljava/lang/String;
    const-string/jumbo v24, "Screenshot_%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v10, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    .line 201
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ".png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    .line 204
    new-instance v24, Ljava/io/File;

    sget-object v25, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    const-string/jumbo v26, "Screenshots"

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 205
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 209
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 210
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 211
    .local v9, "iconSize":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    move/from16 v20, v0

    .line 212
    .local v20, "previewWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    move/from16 v19, v0

    .line 213
    .local v19, "previewHeight":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedOrigin:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    .line 214
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->rotation:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRotation:I

    .line 215
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->webData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    .line 217
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 218
    .local v4, "c":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 219
    .local v17, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 220
    .local v6, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v24, 0x3e800000    # 0.25f

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 221
    const/16 v24, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    new-instance v24, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 223
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 224
    .local v12, "matrix":Landroid/graphics/Matrix;
    const/high16 v16, 0x4c000000    # 3.3554432E7f

    .line 226
    .local v16, "overlayColor":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    move/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 227
    .local v18, "picture":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v24, v0

    sub-int v24, v20, v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v25, v0

    sub-int v25, v19, v25

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 228
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 230
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 231
    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v22, v24, v25

    .line 235
    .local v22, "scale":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v9, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 236
    .local v8, "icon":Landroid/graphics/Bitmap;
    move/from16 v0, v22

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 237
    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v22

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    .line 238
    int-to-float v0, v9

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v22

    sub-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    .line 237
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 239
    invoke-virtual {v4, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 241
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 242
    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    .line 246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 247
    new-instance v24, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-direct/range {v24 .. v24}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;-><init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z

    .line 272
    :cond_1
    sget-boolean v24, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v24, :cond_4

    const/16 v24, 0x0

    :goto_2
    sput-boolean v24, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 273
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 277
    .local v14, "now":J
    new-instance v24, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v24 .. v24}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 278
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    .line 277
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 281
    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    const v25, 0x7f0f027d

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 281
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 283
    const v25, 0x7f0f027e

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 281
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 284
    const v25, 0x7f02057b

    .line 281
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 285
    const-string/jumbo v25, "progress"

    .line 281
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 287
    const/16 v25, 0x1

    .line 281
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 289
    const v25, 0x106005a

    .line 288
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 281
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 292
    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    const v25, 0x7f0f027d

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 292
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 294
    const v25, 0x7f0f027e

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 292
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 295
    const v25, 0x7f02057b

    .line 292
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 297
    const/16 v25, 0x1

    .line 292
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 298
    const v25, 0x106005a

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 292
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v25, v0

    .line 292
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v25

    .line 292
    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 305
    .local v13, "n":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v24, v0

    const v25, 0x7f13003a

    invoke-virtual/range {v24 .. v25}, Landroid/app/NotificationManager;->cancel(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v24, v0

    const v25, 0x7f13003a

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 312
    .end local v13    # "n":Landroid/app/Notification;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v24, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    check-cast v24, Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 175
    return-void

    .line 186
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v6    # "desat":Landroid/graphics/ColorMatrix;
    .end local v8    # "icon":Landroid/graphics/Bitmap;
    .end local v9    # "iconSize":I
    .end local v10    # "imageDate":Ljava/lang/String;
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    .end local v14    # "now":J
    .end local v16    # "overlayColor":I
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v18    # "picture":Landroid/graphics/Bitmap;
    .end local v19    # "previewHeight":I
    .end local v20    # "previewWidth":I
    .end local v22    # "scale":F
    .restart local v5    # "currentUser":I
    .restart local v11    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_3
    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    goto/16 :goto_0

    .line 272
    .end local v5    # "currentUser":I
    .end local v11    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v6    # "desat":Landroid/graphics/ColorMatrix;
    .restart local v8    # "icon":Landroid/graphics/Bitmap;
    .restart local v9    # "iconSize":I
    .restart local v10    # "imageDate":Ljava/lang/String;
    .restart local v12    # "matrix":Landroid/graphics/Matrix;
    .restart local v16    # "overlayColor":I
    .restart local v17    # "paint":Landroid/graphics/Paint;
    .restart local v18    # "picture":Landroid/graphics/Bitmap;
    .restart local v19    # "previewHeight":I
    .restart local v20    # "previewWidth":I
    .restart local v22    # "scale":F
    :cond_4
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 194
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v6    # "desat":Landroid/graphics/ColorMatrix;
    .end local v8    # "icon":Landroid/graphics/Bitmap;
    .end local v9    # "iconSize":I
    .end local v10    # "imageDate":Ljava/lang/String;
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    .end local v16    # "overlayColor":I
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v18    # "picture":Landroid/graphics/Bitmap;
    .end local v19    # "previewHeight":I
    .end local v20    # "previewWidth":I
    .end local v22    # "scale":F
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method private broadcastForLoggingApp(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 574
    const-string/jumbo v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCapturedOrigin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mImageFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mScreenCpatureTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.scapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 578
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    :goto_0
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 572
    return-void

    .line 580
    :cond_0
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isComponentAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 538
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 540
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 541
    const/4 v2, 0x1

    return v2

    .line 543
    :cond_0
    return v3

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v3
.end method

.method private isEditorAvailable(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 551
    const-string/jumbo v3, "com.dama.paperartist"

    .line 552
    .local v3, "paperArtistPackage":Ljava/lang/String;
    const-string/jumbo v2, "com.dama.paperartist.PaperArtistActivity"

    .line 553
    .local v2, "paperArtistClass":Ljava/lang/String;
    const-string/jumbo v5, "com.sec.android.mimage.photoretouching"

    .line 554
    .local v5, "photoEditorPackage":Ljava/lang/String;
    const-string/jumbo v4, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    .line 555
    .local v4, "photoEditorClass":Ljava/lang/String;
    const-string/jumbo v7, "air.com.adobe.pstouch.oem1"

    .line 556
    .local v7, "psTouchPackage":Ljava/lang/String;
    const-string/jumbo v6, "air.com.adobe.pstouch.oem1.AppEntry"

    .line 558
    .local v6, "psTouchClass":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "editorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 564
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-direct {p0, p1, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 565
    const/4 v8, 0x1

    return v8

    .line 563
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :cond_1
    const/4 v8, 0x0

    return v8
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 34
    .param p1, "params"    # [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    .line 319
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "doInBackground"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    .line 322
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "params.length is wrong"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/16 v30, 0x0

    return-object v30

    .line 327
    :cond_0
    const/16 v30, -0x2

    invoke-static/range {v30 .. v30}, Landroid/os/Process;->setThreadPriority(I)V

    .line 329
    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 330
    .local v4, "context":Landroid/content/Context;
    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v30

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 331
    .local v15, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 333
    .local v21, "r":Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 334
    .local v16, "imageFile":Ljava/io/File;
    const/16 v19, 0x0

    .line 338
    .local v19, "out":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->mkdirs()Z

    .line 342
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    div-long v6, v30, v32

    .line 345
    .local v6, "dateSeconds":J
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "mImageFilePath : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 347
    .end local v16    # "imageFile":Ljava/io/File;
    .local v17, "imageFile":Ljava/io/File;
    :try_start_1
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 348
    .local v20, "out":Ljava/io/OutputStream;
    if-eqz v15, :cond_d

    .end local v19    # "out":Ljava/io/OutputStream;
    :try_start_2
    sget-object v30, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v31, 0x64

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 349
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 350
    move-object/from16 v0, v20

    check-cast v0, Ljava/io/FileOutputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileDescriptor;->sync()V

    .line 351
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 352
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "image.getByteCount() : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 356
    .local v29, "values":Landroid/content/ContentValues;
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 357
    .local v22, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v30, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v30, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v30, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v30, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    const-string/jumbo v30, "date_added"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    const-string/jumbo v30, "date_modified"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    const-string/jumbo v30, "mime_type"

    const-string/jumbo v31, "image/png"

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v30, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string/jumbo v30, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string/jumbo v30, "_size"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->putWebDataToContentValues(Landroid/content/ContentValues;Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)V

    .line 371
    :cond_1
    sget-object v30, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v28

    .line 373
    .local v28, "uri":Landroid/net/Uri;
    if-nez v28, :cond_7

    .line 374
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "uri is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 431
    :goto_0
    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 432
    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 435
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v30, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v5, "copyIntent":Landroid/content/Intent;
    const-string/jumbo v30, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string/jumbo v30, "noToast"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 441
    const-string/jumbo v30, "sys.iss.state"

    const-string/jumbo v31, "0"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 442
    .local v18, "issState":Ljava/lang/String;
    const-string/jumbo v30, "3rd"

    const-string/jumbo v31, "ro.release.3rd_party"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2

    const-string/jumbo v30, "true"

    const-string/jumbo v31, "ro.release.iss"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x40

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 443
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->broadcastForLoggingApp(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    .end local v5    # "copyIntent":Landroid/content/Intent;
    .end local v18    # "issState":Ljava/lang/String;
    .end local v22    # "resolver":Landroid/content/ContentResolver;
    .end local v28    # "uri":Landroid/net/Uri;
    .end local v29    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_1
    if-eqz v20, :cond_4

    .line 462
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .local v19, "out":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .line 470
    .end local v6    # "dateSeconds":J
    .end local v17    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    :cond_5
    :goto_3
    if-eqz v15, :cond_6

    .line 471
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "image recycle"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 475
    :cond_6
    const/16 v30, 0x0

    aget-object v30, p1, v30

    return-object v30

    .line 377
    .restart local v6    # "dateSeconds":J
    .restart local v17    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    .restart local v22    # "resolver":Landroid/content/ContentResolver;
    .restart local v28    # "uri":Landroid/net/Uri;
    .restart local v29    # "values":Landroid/content/ContentValues;
    :cond_7
    :try_start_4
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "uri : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    .line 380
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v30

    new-instance v31, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v32, v0

    invoke-direct/range {v31 .. v33}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v30 .. v31}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    .line 381
    .local v27, "subjectDate":Ljava/lang/String;
    const-string/jumbo v30, "Screenshot (%s)"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 382
    .local v26, "subject":Ljava/lang/String;
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v30, "android.intent.action.SEND"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v25, "sharingNotiIntent":Landroid/content/Intent;
    const-class v30, Lcom/android/systemui/screenshot/ScreenshotShareActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 384
    const v30, 0x10008000

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    const-string/jumbo v30, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v30, "Uri"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 387
    const-string/jumbo v30, "Subject"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string/jumbo v30, "NotificationId"

    const v31, 0x7f13003a

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const/16 v24, 0x0

    .line 390
    .local v24, "shareIcon":Landroid/graphics/drawable/Icon;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 391
    const v30, 0x7f020717

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v24

    .line 393
    .end local v24    # "shareIcon":Landroid/graphics/drawable/Icon;
    :cond_8
    new-instance v30, Landroid/app/Notification$Action$Builder;

    const v31, 0x7f0f028f

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 394
    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move/from16 v0, v32

    move-object/from16 v1, v25

    move/from16 v2, v33

    invoke-static {v4, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 393
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v30 .. v30}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v23

    .line 395
    .local v23, "shareAction":Landroid/app/Notification$Action;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 398
    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isEditorAvailable(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 399
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v30, "android.intent.action.EDIT"

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v14, "editIntent":Landroid/content/Intent;
    const-string/jumbo v30, "Uri"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    const-string/jumbo v30, "NotificationId"

    const v31, 0x7f13003a

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    const-class v30, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    move-object/from16 v0, v30

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 403
    const v30, 0x10008000

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    const/4 v13, 0x0

    .line 405
    .local v13, "editIcon":Landroid/graphics/drawable/Icon;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v30, v0

    if-eqz v30, :cond_9

    .line 406
    const v30, 0x7f020716

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 408
    .end local v13    # "editIcon":Landroid/graphics/drawable/Icon;
    :cond_9
    new-instance v30, Landroid/app/Notification$Action$Builder;

    const v31, 0x7f0f028e

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 409
    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v4, v0, v14, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 408
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v13, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v30 .. v30}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v12

    .line 410
    .local v12, "editAction":Landroid/app/Notification$Action;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 414
    .end local v12    # "editAction":Landroid/app/Notification$Action;
    .end local v14    # "editIntent":Landroid/content/Intent;
    :cond_a
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v30, "android.intent.action.DELETE"

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v10, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v30, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v30, "currentUserHandle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 419
    const-class v30, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    move-object/from16 v0, v30

    invoke-virtual {v10, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 420
    const-string/jumbo v30, "NotificationId"

    const v31, 0x7f13003a

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const/4 v9, 0x0

    .line 422
    .local v9, "deleteIcon":Landroid/graphics/drawable/Icon;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    .line 423
    const v30, 0x7f020715

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    .line 425
    .end local v9    # "deleteIcon":Landroid/graphics/drawable/Icon;
    :cond_b
    new-instance v30, Landroid/app/Notification$Action$Builder;

    const v31, 0x7f0f0290

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 426
    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v4, v0, v10, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 425
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v9, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v30 .. v30}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    .line 427
    .local v8, "deleteAction":Landroid/app/Notification$Action;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 429
    .end local v8    # "deleteAction":Landroid/app/Notification$Action;
    .end local v10    # "deleteIntent":Landroid/content/Intent;
    .end local v23    # "shareAction":Landroid/app/Notification$Action;
    .end local v25    # "sharingNotiIntent":Landroid/content/Intent;
    .end local v26    # "subject":Ljava/lang/String;
    .end local v27    # "subjectDate":Ljava/lang/String;
    :cond_c
    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 454
    .end local v22    # "resolver":Landroid/content/ContentResolver;
    .end local v28    # "uri":Landroid/net/Uri;
    .end local v29    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .line 455
    .end local v6    # "dateSeconds":J
    .end local v17    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    :goto_4
    :try_start_5
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "doInBackground() Exception occured : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    .line 457
    const/16 v30, 0x0

    aget-object v30, p1, v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 458
    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 460
    if-eqz v19, :cond_5

    .line 462
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 463
    :catch_1
    move-exception v11

    .line 464
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 447
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "dateSeconds":J
    .restart local v17    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    :cond_d
    :try_start_7
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "Fail to create capture image file"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 450
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 451
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 459
    :catchall_0
    move-exception v30

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .line 460
    .end local v6    # "dateSeconds":J
    .end local v17    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    :goto_5
    if-eqz v19, :cond_e

    .line 462
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 459
    :cond_e
    :goto_6
    throw v30

    .line 463
    .restart local v6    # "dateSeconds":J
    .restart local v17    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v11

    .line 464
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v30, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 463
    .end local v6    # "dateSeconds":J
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v17    # "imageFile":Ljava/io/File;
    .end local v20    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v11

    .line 464
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v31, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v32, "IOException"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 459
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v30

    goto :goto_5

    .restart local v6    # "dateSeconds":J
    .restart local v17    # "imageFile":Ljava/io/File;
    .local v19, "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v30

    move-object/from16 v16, v17

    .end local v17    # "imageFile":Ljava/io/File;
    .local v16, "imageFile":Ljava/io/File;
    goto :goto_5

    .line 454
    .end local v6    # "dateSeconds":J
    .local v16, "imageFile":Ljava/io/File;
    :catch_4
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .end local v11    # "e":Ljava/lang/Exception;
    .end local v16    # "imageFile":Ljava/io/File;
    .restart local v6    # "dateSeconds":J
    .restart local v17    # "imageFile":Ljava/io/File;
    :catch_5
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    .end local v17    # "imageFile":Ljava/io/File;
    .local v16, "imageFile":Ljava/io/File;
    goto/16 :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 318
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 13
    .param p1, "params"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    const/high16 v12, 0x10000000

    const v11, 0x106005a

    const/4 v10, 0x1

    const v9, 0x7f13003a

    const/4 v8, 0x0

    .line 480
    sget-object v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPostExecute. params.result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 483
    .local v1, "r":Landroid/content/res/Resources;
    iget-boolean v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    if-eqz v5, :cond_1

    .line 485
    iget v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v5, :cond_0

    .line 486
    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const v6, 0x7f0f0289

    invoke-static {v5, v6}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 488
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iget-wide v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->notifyGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z

    .line 489
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-virtual {v5}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->disconnect()V

    .line 528
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 529
    sget-object v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "SaveImageInBackgroundTask setProcessForeground false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 534
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 479
    return-void

    .line 492
    :cond_1
    iget v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v5, :cond_2

    .line 494
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 495
    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const v6, 0x7f0f0289

    invoke-static {v5, v6}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 498
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v4, "viewIntent":Landroid/content/Intent;
    const-string/jumbo v5, "imageUri"

    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string/jumbo v5, "NotificationId"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v6, Lcom/android/systemui/screenshot/ScreenshotViewActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 506
    .local v2, "now":J
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 507
    const v6, 0x7f0f027f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 506
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 508
    const v6, 0x7f0f0280

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 506
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 509
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v6, v8, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 506
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 512
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 506
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 514
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 515
    const v6, 0x7f0f027f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 514
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 516
    const v6, 0x7f0f0280

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 514
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 517
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v6, v8, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 514
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 520
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 514
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 522
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 514
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 524
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 530
    .end local v2    # "now":J
    .end local v4    # "viewIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 479
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "params":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
