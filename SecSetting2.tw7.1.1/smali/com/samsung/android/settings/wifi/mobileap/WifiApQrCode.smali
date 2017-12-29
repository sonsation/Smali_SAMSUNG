.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;
.super Landroid/app/Fragment;
.source "WifiApQrCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private isBixbyShareMenuItem:Z

.field private isBixbymQrBmp:Z

.field private mActivity:Landroid/app/Activity;

.field private mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

.field private mBmpUri:Landroid/net/Uri;

.field private mConnection:Landroid/content/ServiceConnection;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mQrBmp:Landroid/graphics/Bitmap;

.field private mQrCode:Ljava/lang/String;

.field private final mQrCodeFileName:Ljava/lang/String;

.field private final mQrCodePath:Ljava/lang/String;

.field private mQrGenerate:Landroid/widget/Button;

.field private mQrImage:Landroid/widget/ImageView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShareMenuItem:Landroid/view/MenuItem;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->enabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->isBixbymQrBmp:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrGenerate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->isBixbyShareMenuItem:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->isBixbymQrBmp:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->isQrCodeShown()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    const-string/jumbo v0, "/storage/emulated/0/Pictures/WifiApQrCode/"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrCodePath:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "%s.png"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrCodeFileName:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 184
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mConnection:Landroid/content/ServiceConnection;

    .line 354
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 62
    return-void
.end method

.method private isQrCodeShown()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_qr_code_generated"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 175
    return v3

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_qr_code_generated"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 177
    return v4

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "WifiApQrCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in getting value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    return v4
.end method


# virtual methods
.method public clearQrCode(Ljava/io/File;)Z
    .locals 5
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 233
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "child":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 236
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->clearQrCode(Ljava/io/File;)Z

    move-result v2

    .line 237
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 238
    const/4 v3, 0x0

    return v3

    .line 235
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "child":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    return v3
.end method

.method public deleteQrCode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 228
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/storage/emulated/0/Pictures/WifiApQrCode/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "path":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->clearQrCode(Ljava/io/File;)Z

    .line 224
    return-void
.end method

.method public generateQrCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    if-eqz v2, :cond_0

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/qragent/service/IQRService;->getQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 290
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 286
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getQrCodeUri()Landroid/net/Uri;
    .locals 18

    .prologue
    .line 305
    const/4 v13, 0x0

    .line 306
    .local v13, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 307
    .local v10, "out":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 308
    .local v6, "imagePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 310
    .local v5, "imageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 312
    .local v3, "imageDate":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/io/File;

    const-string/jumbo v15, "/storage/emulated/0/Pictures/WifiApQrCode/"

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v12, "path":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 314
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 315
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 316
    .local v8, "imageTime":J
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string/jumbo v16, "yyyyMMdd-HHmmss"

    invoke-direct/range {v15 .. v16}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v15 .. v16}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "imageDate":Ljava/lang/String;
    const-string/jumbo v15, "%s.png"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "imageName":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "imagePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v4, "imageFile":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .local v11, "out":Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    .end local v10    # "out":Ljava/io/OutputStream;
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 322
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 323
    move-object v0, v11

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/FileDescriptor;->sync()V

    .line 325
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v15, "_data"

    invoke-virtual {v14, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string/jumbo v15, "title"

    const-string/jumbo v16, "WifiApQrCode"

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v15, "_display_name"

    const-string/jumbo v16, "WifiApQrCode"

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string/jumbo v15, "datetaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    const-string/jumbo v15, "date_added"

    const-wide/16 v16, 0x3e8

    div-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    const-string/jumbo v15, "date_modified"

    const-wide/16 v16, 0x3e8

    div-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    const-string/jumbo v15, "mime_type"

    const-string/jumbo v16, "image/png"

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v15, "width"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string/jumbo v15, "height"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string/jumbo v15, "_size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mResolver:Landroid/content/ContentResolver;

    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 337
    .local v13, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v15, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "file://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v7, "mediaIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    .end local v7    # "mediaIntent":Landroid/content/Intent;
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_1
    if-eqz v11, :cond_2

    .line 345
    :try_start_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v10, v11

    .line 351
    .end local v3    # "imageDate":Ljava/lang/String;
    .end local v4    # "imageFile":Ljava/io/File;
    .end local v5    # "imageName":Ljava/lang/String;
    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v8    # "imageTime":J
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "path":Ljava/io/File;
    :cond_3
    :goto_1
    return-object v13

    .line 346
    .restart local v3    # "imageDate":Ljava/lang/String;
    .restart local v4    # "imageFile":Ljava/io/File;
    .restart local v5    # "imageName":Ljava/lang/String;
    .restart local v6    # "imagePath":Ljava/lang/String;
    .restart local v8    # "imageTime":J
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "path":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "imageDate":Ljava/lang/String;
    .end local v4    # "imageFile":Ljava/io/File;
    .end local v5    # "imageName":Ljava/lang/String;
    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v8    # "imageTime":J
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "path":Ljava/io/File;
    .restart local v10    # "out":Ljava/io/OutputStream;
    .local v13, "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 341
    .end local v10    # "out":Ljava/io/OutputStream;
    .end local v13    # "uri":Landroid/net/Uri;
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    if-eqz v10, :cond_3

    .line 345
    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 346
    :catch_2
    move-exception v2

    .line 347
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 342
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 343
    :goto_3
    if-eqz v10, :cond_4

    .line 345
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 342
    :cond_4
    :goto_4
    throw v15

    .line 346
    :catch_3
    move-exception v2

    .line 347
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 342
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "imageDate":Ljava/lang/String;
    .restart local v4    # "imageFile":Ljava/io/File;
    .restart local v5    # "imageName":Ljava/lang/String;
    .restart local v6    # "imagePath":Ljava/lang/String;
    .restart local v8    # "imageTime":J
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "path":Ljava/io/File;
    :catchall_1
    move-exception v15

    move-object v10, v11

    .end local v11    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 340
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public getQrString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 259
    const-string/jumbo v4, "T:NONE;"

    .line 260
    .local v4, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 261
    .local v1, "password":Ljava/lang/String;
    const-string/jumbo v0, "H:false;"

    .line 262
    .local v0, "hidden":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 263
    .local v5, "wc":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    const-string/jumbo v4, "T:NONE;"

    .line 274
    .end local v1    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "S:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "ssid":Ljava/lang/String;
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v6, :cond_1

    .line 276
    const-string/jumbo v0, "H:true;"

    .line 277
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WIFI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "result":Ljava/lang/String;
    return-object v2

    .line 265
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "ssid":Ljava/lang/String;
    .restart local v1    # "password":Ljava/lang/String;
    :cond_2
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 266
    :cond_3
    const-string/jumbo v4, "T:WPA;"

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "password":Ljava/lang/String;
    goto :goto_0

    .line 268
    .local v1, "password":Ljava/lang/String;
    :cond_4
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v8

    if-eqz v6, :cond_5

    .line 269
    const-string/jumbo v4, "T:WEP;"

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "password":Ljava/lang/String;
    goto/16 :goto_0

    .line 271
    .local v1, "password":Ljava/lang/String;
    :cond_5
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 272
    const-string/jumbo v4, "T:WAPI-PSK;"

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 112
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->setHasOptionsMenu(Z)V

    .line 113
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    const v3, 0x7f1108fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrImage:Landroid/widget/ImageView;

    .line 114
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    const v3, 0x7f1108fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrGenerate:Landroid/widget/Button;

    .line 115
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrGenerate:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->getQrString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrCode:Ljava/lang/String;

    .line 127
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 128
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHQR"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mResolver:Landroid/content/ContentResolver;

    .line 97
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 98
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->isBixbymQrBmp:Z

    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->isBixbyShareMenuItem:Z

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    const v0, 0x7f0b1011

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mShareMenuItem:Landroid/view/MenuItem;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mShareMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 140
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->isBixbyShareMenuItem:Z

    if-eqz v0, :cond_0

    .line 141
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->isBixbyShareMenuItem:Z

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mShareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 137
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mShareMenuItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->enabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const v0, 0x7f04039c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->deleteQrCode()V

    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 219
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->deleteQrCode()V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->startShareQrCode()V

    .line 155
    const/4 v0, 0x1

    return v0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 213
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "QRCodeGenerator"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->isQrCodeShown()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->enabled:Z

    .line 164
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->enabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSaveQrWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSaveQrWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.app.qragent"

    const-string/jumbo v2, "com.samsung.android.app.qragent.service.QRService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 169
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "QRCodeGenerator"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public startShareQrCode()V
    .locals 3

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->getQrCodeUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string/jumbo v1, "image/png"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 300
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b1012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->startActivity(Landroid/content/Intent;)V

    .line 294
    return-void
.end method

.method public updateView(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/16 v5, 0x400

    const/16 v4, 0x8

    .line 245
    if-eqz p1, :cond_2

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v1, v5, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrGenerate:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mShareMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mShareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 244
    :cond_1
    return-void

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
