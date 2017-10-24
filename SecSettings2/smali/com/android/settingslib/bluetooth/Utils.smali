.class public Lcom/android/settingslib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/Utils$ErrorListener;,
        Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;
    }
.end annotation


# static fields
.field private static final CONTACT_NUMBER:[Ljava/lang/String;

.field public static final DEBUG:Z

.field static checksum:Ljava/util/zip/Checksum;

.field private static sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

.field private static sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    .line 59
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 181
    const-string/jumbo v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 180
    sput-object v0, Lcom/android/settingslib/bluetooth/Utils;->CONTACT_NUMBER:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 8
    .param p0, "object"    # [B

    .prologue
    const/4 v3, 0x0

    .line 235
    const-string/jumbo v0, "0123456789abcdef"

    .line 237
    .local v0, "HEXES":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 238
    return-object v3

    .line 240
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 241
    .local v2, "hex":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v1, p0, v3

    .line 242
    .local v1, "b":B
    const-string/jumbo v5, "0123456789abcdef"

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0123456789abcdef"

    and-int/lit8 v7, v1, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeDimen"    # I
    .param p2, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 335
    const/4 v6, 0x0

    .line 336
    .local v6, "resultIcon":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 337
    .local v2, "mask":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 339
    .local v7, "scaledSource":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    .line 341
    .local v8, "size":I
    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 342
    .local v2, "mask":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 343
    .local v3, "maskCanvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 344
    .local v4, "maskPaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settingslib/R$color;->bt_device_icon_background_tint_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    int-to-float v9, v8

    div-float/2addr v9, v12

    int-to-float v10, v8

    div-float/2addr v10, v12

    int-to-float v11, v8

    div-float/2addr v11, v12

    invoke-virtual {v3, v9, v10, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 348
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 349
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 350
    .local v7, "scaledSource":Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    invoke-static {v7, v8, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 352
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 354
    .local v6, "resultIcon":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 355
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 357
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 358
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 359
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 360
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "resultIcon":Landroid/graphics/Bitmap;
    .end local v7    # "scaledSource":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v2, :cond_1

    .line 366
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    :cond_1
    if-eqz v7, :cond_2

    .line 369
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 372
    .end local v2    # "mask":Landroid/graphics/Bitmap;
    .end local v3    # "maskCanvas":Landroid/graphics/Canvas;
    .end local v4    # "maskPaint":Landroid/graphics/Paint;
    :cond_2
    :goto_0
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v9

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    if-eqz v2, :cond_3

    .line 366
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    :cond_3
    if-eqz v7, :cond_2

    .line 369
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 364
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 365
    if-eqz v2, :cond_4

    .line 366
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    :cond_4
    if-eqz v7, :cond_5

    .line 369
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 364
    :cond_5
    throw v9
.end method

.method public static cutNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string/jumbo v1, "[^\\d]"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "phoneNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_0
    return-object v0
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .param p0, "connectionState"    # I

    .prologue
    .line 62
    packed-switch p0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 64
    :pswitch_0
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return v0

    .line 66
    :pswitch_1
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return v0

    .line 68
    :pswitch_2
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    return v0

    .line 70
    :pswitch_3
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return v0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v11, 0x0

    .line 295
    .local v11, "phones":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 297
    .local v8, "clsInputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 299
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 300
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 301
    const-string/jumbo v3, "photo_uri"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 302
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 300
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 303
    .local v11, "phones":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    const-string/jumbo v2, "photo_uri"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 305
    .local v14, "uriString":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 306
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 307
    .local v12, "photo":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 309
    .local v8, "clsInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 310
    .local v7, "btDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 311
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 312
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 311
    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 313
    .local v13, "resizeBitmap":Landroid/graphics/Bitmap;
    sget v2, Lcom/android/settingslib/R$dimen;->list_app_icon_size:I

    invoke-static {p0, v2, v13}, Lcom/android/settingslib/bluetooth/Utils;->cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 320
    if-eqz v11, :cond_0

    .line 321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_0
    if-eqz v8, :cond_1

    .line 325
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    :cond_1
    :goto_0
    return-object v2

    .line 326
    :catch_0
    move-exception v9

    .line 327
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 320
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "btDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "phones":Landroid/database/Cursor;
    .end local v12    # "photo":Landroid/net/Uri;
    .end local v13    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "uriString":Ljava/lang/String;
    .local v8, "clsInputStream":Ljava/io/InputStream;
    :cond_2
    if-eqz v11, :cond_3

    .line 321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 331
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "clsInputStream":Ljava/io/InputStream;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 317
    :catch_1
    move-exception v10

    .line 318
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    if-eqz v11, :cond_4

    .line 321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_4
    if-eqz v8, :cond_3

    .line 325
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 326
    :catch_2
    move-exception v9

    .line 327
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 319
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 320
    if-eqz v11, :cond_5

    .line 321
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_5
    if-eqz v8, :cond_6

    .line 325
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 319
    :cond_6
    :goto_2
    throw v2

    .line 326
    :catch_3
    move-exception v9

    .line 327
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getDataCheckString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string/jumbo v4, "00000000"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const-string/jumbo v4, "0000"

    return-object v4

    .line 266
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 267
    .local v0, "byteArray":[B
    sget-object v4, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    array-length v5, v0

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6, v5}, Ljava/util/zip/Checksum;->update([BII)V

    .line 268
    sget-object v4, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    .line 269
    .local v2, "csValue":J
    sget-object v4, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->reset()V

    .line 271
    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/Utils;->longToString(J)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getParsePhoneNumber(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    .prologue
    const/4 v0, 0x0

    .line 285
    if-nez p1, :cond_0

    .line 286
    return-object v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getContactHash()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->byteToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getContactCrc()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/Utils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/bluetooth/Utils;->retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "address":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 395
    const-string/jumbo v2, "(?i).*BMW.*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "(?i).*A0:56:B2.*|(?i).*B8:24:10.*|(?i).*9C:DF:03.*|(?i).*00:19:C0.*"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    :cond_0
    const-string/jumbo v2, "(?i)MINI[0-9].*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 395
    if-eqz v2, :cond_2

    .line 397
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 401
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 376
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 376
    if-nez v1, :cond_0

    .line 378
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 376
    if-eqz v1, :cond_2

    .line 379
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 380
    .local v0, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-nez v0, :cond_1

    return v3

    .line 381
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 383
    .end local v0    # "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_2
    return v3
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 134
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static longToString(J)Ljava/lang/String;
    .locals 10
    .param p0, "m"    # J

    .prologue
    const/4 v8, 0x0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 278
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 279
    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    mul-int/lit8 v4, v0, 0x8

    ushr-long v4, p0, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static retrieveContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v8, 0x0

    .line 154
    .local v8, "phones":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 156
    .local v6, "contactName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 158
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 159
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 160
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 161
    const-string/jumbo v3, "display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 162
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 164
    .local v8, "phones":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-string/jumbo v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 166
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 173
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "contactName":Ljava/lang/String;
    .end local v8    # "phones":Landroid/database/Cursor;
    :cond_0
    if-eqz v8, :cond_1

    .line 174
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 177
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-object v6

    .line 170
    .restart local v6    # "contactName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 171
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    if-eqz v8, :cond_1

    .line 174
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 172
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 173
    if-eqz v8, :cond_2

    .line 174
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_2
    throw v2
.end method

.method public static retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "numberhash"    # Ljava/lang/String;
    .param p2, "crc"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v6, 0x0

    .line 187
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 188
    .local v7, "clsInputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 189
    .local v11, "findContact":Ljava/lang/String;
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB :: hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 193
    sget-object v2, Lcom/android/settingslib/bluetooth/Utils;->CONTACT_NUMBER:[Ljava/lang/String;

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data12 LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 195
    const-string/jumbo v4, "%\'"

    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 191
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 198
    .end local v11    # "findContact":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    const-string/jumbo v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, "data":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settingslib/bluetooth/Utils;->cutNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->getDataCheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "crcValue":Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB :: CHECK  : true  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", find contact name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object v11, v9

    .local v11, "findContact":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v11    # "findContact":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB :: CHECK  : false  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 216
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "crcValue":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 217
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    if-eqz v6, :cond_1

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v11

    .line 211
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_2
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    const-string/jumbo v1, " hash retrieveDB :: end to cursor moveToNext"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :goto_2
    if-eqz v6, :cond_1

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 214
    .local v11, "findContact":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    const-string/jumbo v1, " hash retrieveDB :: CHECK :false - cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 218
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v11    # "findContact":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 219
    if-eqz v6, :cond_4

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_4
    throw v0
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .prologue
    .line 116
    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .line 115
    return-void
.end method

.method public static setSemErrorListener(Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    .prologue
    .line 120
    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    .line 119
    return-void
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->showConnectingError(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    .line 104
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 103
    :cond_0
    return-void
.end method

.method static showPANConnectingError(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isNapRole"    # Z

    .prologue
    .line 92
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->showPANConnectingError(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public static updateDeviceName(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 79
    .local v0, "mLocalAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "mLocalAdapterName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "Settingslib_BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDeviceName :: change device name to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
