.class public final Lcom/android/settings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/Utils$1;,
        Lcom/android/settings/bluetooth/Utils$2;,
        Lcom/android/settings/bluetooth/Utils$3;
    }
.end annotation


# static fields
.field private static final mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

.field private static final mSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;


# direct methods
.method static synthetic -get0()Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    .locals 1

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;
    .locals 1

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/android/settings/bluetooth/Utils$1;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$1;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .line 168
    new-instance v0, Lcom/android/settings/bluetooth/Utils$2;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$2;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    .line 195
    new-instance v0, Lcom/android/settings/bluetooth/Utils$3;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$3;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareBixbyDeviceNameEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string/jumbo v0, "BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "compareBixbyDeviceNameEquals :: target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_1
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getContactUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v7, 0x0

    .line 320
    .local v7, "phones":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 322
    .local v8, "uriString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 323
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 324
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 325
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 326
    const-string/jumbo v3, "photo_uri"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 327
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 325
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 328
    .local v7, "phones":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    const-string/jumbo v2, "photo_uri"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 335
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "phones":Landroid/database/Cursor;
    .end local v8    # "uriString":Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 336
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 339
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-object v8

    .line 332
    .restart local v8    # "uriString":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 333
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    if-eqz v7, :cond_1

    .line 336
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 334
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 335
    if-eqz v7, :cond_2

    .line 336
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_2
    throw v2
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method public static makeBitmapIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 264
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0022

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v6, v14

    .line 265
    .local v6, "iconSize":I
    const/4 v3, 0x0

    .line 266
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 268
    .local v12, "scaledSource":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v14, :cond_0

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d00e9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 270
    check-cast p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 276
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v3, :cond_1

    .line 277
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 278
    .local v12, "scaledSource":Landroid/graphics/Bitmap;
    const/4 v14, 0x1

    invoke-static {v12, v6, v6, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0022

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 285
    .local v1, "appSize":F
    float-to-int v14, v1

    float-to-int v15, v1

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 286
    .local v2, "background":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 288
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0022

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v10, v14, v15

    .line 290
    .local v10, "radius":F
    new-instance v9, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v9, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 291
    .local v9, "paint":Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0005

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v1, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v1, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v10, v16

    move/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 297
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d00e8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v1, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v1, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v10, v16

    move/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 303
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 304
    .local v7, "mode":Landroid/graphics/PorterDuff$Mode;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d00e9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 305
    .local v13, "tint":I
    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v14, v13, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 307
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v1, v14

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v1, v15

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    invoke-virtual {v5, v3, v14, v15, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 309
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 310
    .local v8, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 311
    const/16 v14, 0x32

    iput v14, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 312
    const/16 v14, 0x32

    iput v14, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 313
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v11, v14, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 315
    .local v11, "retDrawable":Landroid/graphics/drawable/Drawable;
    return-object v11

    .end local v1    # "appSize":F
    .end local v2    # "background":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "mode":Landroid/graphics/PorterDuff$Mode;
    .end local v8    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "radius":F
    .end local v11    # "retDrawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "tint":I
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    .local v12, "scaledSource":Landroid/graphics/Bitmap;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v4, p1

    .line 272
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 273
    .local v4, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d00e9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v4, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 274
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 280
    .end local v4    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v14, 0x0

    return-object v14
.end method

.method public static makeNotiSound(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    :try_start_0
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 246
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 247
    .local v2, "notification":Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 248
    .local v3, "r":Landroid/media/Ringtone;
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 249
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 250
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 251
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->makeVibrate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "notification":Landroid/net/Uri;
    .end local v3    # "r":Landroid/media/Ringtone;
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static makeVibrate(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 260
    .local v0, "v":Landroid/os/Vibrator;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 258
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0f02e0

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 153
    .end local p0    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object p0, v0

    .line 150
    .end local v0    # "context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    const/4 v4, 0x0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0f02e0

    invoke-direct {v0, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 147
    .end local p0    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 143
    return-void
.end method
