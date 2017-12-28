.class public Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;
.super Ljava/lang/Object;
.source "SCloudBnr.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;
.implements Lcom/android/launcher3/common/bnr/LauncherBnrListener;


# static fields
.field public static final SCLOUD_DIR_PATH:Ljava/lang/String; = "/BackupRestore"

.field public static final SCLOUD_RESTORE_PATH:Ljava/lang/String; = "/restore"

.field public static final SCLOUD_SOURCE:Ljava/lang/String; = "SCLOUD"

.field private static final TAG:Ljava/lang/String; = "Launcher.SCloudBnr"


# instance fields
.field private mFile:Landroid/os/ParcelFileDescriptor;

.field private mListener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->mFile:Landroid/os/ParcelFileDescriptor;

    .line 51
    iput-object v0, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->mListener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;)Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->mListener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    return-object v0
.end method

.method public static getRestoreDummyInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 262
    if-nez p1, :cond_1

    .line 295
    :cond_0
    return-void

    .line 266
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "className":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/BackupRestore"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/restore"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "dirPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 272
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "fileList":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 274
    const-string v10, "Launcher.SCloudBnr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dir fileList.length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    array-length v11, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v7, v6, v10

    .line 276
    .local v7, "filename":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x5

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "appInfo":Ljava/lang/String;
    const-string v12, "@"

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 278
    .local v9, "splits":[Ljava/lang/String;
    array-length v12, v9

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 279
    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 280
    const-string v12, "Launcher.SCloudBnr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "find title and icon packageName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 282
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 286
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 287
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 288
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 275
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 284
    :cond_3
    const-string v12, ""

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public static isWillRestored(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 235
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v6

    .line 239
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/BackupRestore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/restore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "fileList":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 244
    const-string v8, "Launcher.SCloudBnr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dir fileList.length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    array-length v9, v3

    move v8, v6

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v4, v3, v8

    .line 246
    .local v4, "filename":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x5

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "appInfo":Ljava/lang/String;
    const-string v10, "@"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "splits":[Ljava/lang/String;
    array-length v10, v5

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 249
    aget-object v10, v5, v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    aget-object v10, v5, v10

    .line 250
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v6, v7

    .line 251
    goto :goto_0

    .line 245
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "zipFile"    # Ljava/lang/String;
    .param p2, "unzipLocation"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v10, 0x0

    .line 193
    .local v10, "zin":Ljava/util/zip/ZipInputStream;
    const/4 v4, 0x0

    .line 195
    .local v4, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v12, "Launcher.SCloudBnr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unzip start zipFile = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 198
    .local v6, "fin":Ljava/io/FileInputStream;
    new-instance v11, Ljava/util/zip/ZipInputStream;

    invoke-direct {v11, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 201
    .end local v10    # "zin":Ljava/util/zip/ZipInputStream;
    .local v11, "zin":Ljava/util/zip/ZipInputStream;
    :try_start_1
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v8, "unzipFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_0

    .line 203
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v5, v4

    .line 206
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .local v5, "fOut":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    .local v9, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v9, :cond_4

    .line 207
    const-string v12, "Launcher.SCloudBnr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unzipping "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 210
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_1

    .line 212
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 227
    .end local v3    # "f":Ljava/io/File;
    .end local v9    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    move-object v4, v5

    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 228
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v8    # "unzipFolder":Ljava/io/File;
    .end local v11    # "zin":Ljava/util/zip/ZipInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v10    # "zin":Ljava/util/zip/ZipInputStream;
    :goto_1
    const-string v12, "Launcher.SCloudBnr"

    const-string v13, "unzip"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 230
    invoke-static {v10}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 232
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 215
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .end local v10    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "unzipFolder":Ljava/io/File;
    .restart local v9    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v11    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 216
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_4
    new-array v1, v12, [B

    .line 218
    .local v1, "b":[B
    :goto_3
    invoke-virtual {v11, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    .local v7, "n":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    .line 219
    const/4 v12, 0x0

    invoke-virtual {v4, v1, v12, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 227
    .end local v1    # "b":[B
    .end local v7    # "n":I
    .end local v8    # "unzipFolder":Ljava/io/File;
    .end local v9    # "ze":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v2

    move-object v10, v11

    .end local v11    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "zin":Ljava/util/zip/ZipInputStream;
    goto :goto_1

    .line 221
    .end local v10    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "b":[B
    .restart local v7    # "n":I
    .restart local v8    # "unzipFolder":Ljava/io/File;
    .restart local v9    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v11    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_3
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 222
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, v4

    .line 223
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 225
    .end local v1    # "b":[B
    .end local v7    # "n":I
    :cond_4
    :try_start_5
    const-string v12, "Launcher.SCloudBnr"

    const-string v13, "unzip end"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v5

    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 231
    .end local v11    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "zin":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .line 227
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v8    # "unzipFolder":Ljava/io/File;
    .end local v9    # "ze":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 80
    const-string v3, "Launcher.SCloudBnr"

    const-string v4, "SCloud backup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object p2, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->mFile:Landroid/os/ParcelFileDescriptor;

    .line 83
    iput-object p3, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->mListener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/BackupRestore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/restore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "restorePath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->deleteDir(Ljava/lang/String;)V

    .line 89
    const-string v3, "Launcher.SCloudBnr"

    const-string v4, "backup file creating start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    move-result-object v0

    .line 91
    .local v0, "backupHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    const-string v3, "SCLOUD"

    invoke-virtual {v0, p1, v1, v3, p0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    .line 93
    invoke-static {v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->deleteDir(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    .locals 7
    .param p1, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p2, "saveFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 146
    const-string v3, "Launcher.SCloudBnr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupComplete result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v3, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v3, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v3, "Launcher.SCloudBnr"

    const-string v4, "backup file write"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->mFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr$2;

    invoke-direct {v6, p0}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr$2;-><init>(Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;)V

    invoke-static {v3, v4, v5, v2, v6}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 167
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->mListener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 171
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 160
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v3, "Launcher.SCloudBnr"

    const-string v4, "err"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->mListener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    invoke-static {v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    throw v3

    .line 169
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->mListener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    invoke-interface {v3, v6}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_0

    .line 165
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 160
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 0
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    return-object p1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    return-object p1
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 99
    const-string v1, "Launcher.SCloudBnr"

    const-string v3, "SCloud restore"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/BackupRestore"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/homescreen.exml"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "zipFile":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/restore"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "restorePath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v9, "target":Ljava/io/File;
    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->deleteDir(Ljava/lang/String;)V

    .line 108
    if-eqz p2, :cond_0

    .line 109
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 111
    .local v8, "fin":Ljava/io/FileInputStream;
    const-string v1, "Launcher.SCloudBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file.getStatSize(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v1, "Launcher.SCloudBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target.getAbsolutePath(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_start_0
    const-string v1, "Launcher.SCloudBnr"

    const-string v3, "file write"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr$1;

    invoke-direct {v3, p0, p3}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr$1;-><init>(Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v8, v4, v5, v1, v3}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    .line 123
    const-string v1, "Launcher.SCloudBnr"

    const-string v3, "restoring"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 136
    invoke-direct {p0, v10, v2}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    move-result-object v0

    .line 139
    .local v0, "restoreHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    const-string v3, "SCLOUD"

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    .line 141
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 142
    .end local v0    # "restoreHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 124
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 125
    .local v7, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p3, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    throw v1

    .line 131
    .end local v8    # "fin":Ljava/io/FileInputStream;
    :cond_0
    const-string v1, "Launcher.SCloudBnr"

    const-string v3, "failed, file is null..."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_0
.end method

.method public restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    .locals 3
    .param p1, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p2, "saveFile"    # Ljava/io/File;

    .prologue
    .line 175
    const-string v0, "Launcher.SCloudBnr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreComplete result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method
