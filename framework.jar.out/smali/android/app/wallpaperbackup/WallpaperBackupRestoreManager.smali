.class public Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    }
.end annotation


# static fields
.field public static final CROP_IMAGE_BACKUP:I = 0x0

.field private static final ERROR_KEY:Ljava/lang/String; = "ERR_CODE"

.field private static final EXTRA_ERR_CODE:Ljava/lang/String; = "EXTRA_ERR_CODE"

.field private static final HIGH:I = 0x1

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "wallpaper.png"

.field private static final IMAGE_FOLDER_NAME:Ljava/lang/String; = "wallpaper"

.field private static final IMAGE_ORI_FOLDER_NAME:Ljava/lang/String; = "wallpaper_original"

.field private static final LOCK_IMAGE_FILE_NAME:Ljava/lang/String; = "lockscreen_wallpaper.jpg"

.field private static final NORMAL:I = 0x0

.field public static final ORIGINAL_IMAGE_BACKUP:I = 0x1

.field private static final PERMISSION_COM_WSSNPS:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"

.field private static final REQUIRED_SIZE_KEY:Ljava/lang/String; = "REQ_SIZE"

.field private static final REQ_MINIMUM_SIZE:I = 0xa00000

.field private static final REQ_SUCCESS_SIZE:I = 0x0

.field private static final RESPONSE_BACKUP_LOCKSCREEN:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

.field private static final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

.field private static final RESPONSE_RESTORE_LOCKSCREEN:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

.field private static final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

.field private static final RESULT_KEY:Ljava/lang/String; = "RESULT"

.field private static final SESSION_TIME_KEY:Ljava/lang/String; = "EXPORT_SESSION_TIME"

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SOURCE_KEY:Ljava/lang/String; = "SOURCE"

.field public static final SUPPORT_ORIGINAL_IMAGE_BACKUP_RESTORE:Z = false

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupRestoreManager"

.field private static final WALLPAPERCROPPER2_LOCK_FILE_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.wallpapercropper2/files/original_file_lock.jpg"

.field private static final WALLPAPERCROPPER2_LOCK_XML_FILE_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.wallpapercropper2/files/backup_lock.xml"

.field private static final WALLPAPERCROPPER2_SYSTEM_FILE_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.wallpapercropper2/files/original_file_home.jpg"

.field private static final WALLPAPERCROPPER2_SYSTEM_XML_FILE_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.wallpapercropper2/files/backup_home.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private copyBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "imgFilePath"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 905
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 906
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 907
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 910
    :cond_0
    const/4 v4, 0x0

    .line 911
    .local v4, "success":Z
    const/4 v2, 0x0

    .line 913
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_1

    .line 915
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 916
    const/4 v4, 0x1

    .line 923
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 926
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return v4

    .line 918
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    const-string/jumbo v5, "WallpaperBackupRestoreManager"

    const-string/jumbo v6, "out is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .line 921
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 923
    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 922
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 923
    :goto_3
    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 922
    throw v5

    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 920
    .local v2, "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_2
.end method

.method private copyEncryptBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 9
    .param p1, "imgFilePath"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 773
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 775
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 778
    :cond_0
    const/4 v6, 0x0

    .line 779
    .local v6, "success":Z
    const/4 v5, 0x0

    .line 780
    .local v5, "out":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 782
    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-direct {p0, v4, p3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v5

    .line 784
    .local v5, "out":Ljava/io/OutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 785
    const/4 v6, 0x1

    .line 791
    invoke-virtual {p0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 792
    invoke-virtual {p0, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 795
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    :goto_0
    return v6

    .line 788
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 789
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 791
    invoke-virtual {p0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 792
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 786
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 787
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 791
    invoke-virtual {p0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 792
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 790
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    .line 791
    :goto_3
    invoke-virtual {p0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 792
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 790
    throw v7

    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v3, "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 786
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 788
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private copyEncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "sourceImagePath"    # Ljava/lang/String;
    .param p2, "destImagePath"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 736
    const-string/jumbo v14, "WallpaperBackupRestoreManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "copyEncryptFile sourceImagePath="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " destImagePath="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 738
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 739
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 742
    :cond_0
    const/4 v13, 0x0

    .line 744
    .local v13, "success":Z
    const-wide/16 v10, 0x0

    .line 745
    .local v10, "fsize":J
    const/4 v5, 0x0

    .line 746
    .local v5, "fin":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 747
    .local v7, "fout":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 750
    .local v9, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .local v6, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 753
    .local v8, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v8, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    move-result-object v9

    .line 754
    .local v9, "out":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 755
    .local v12, "readcount":I
    const/16 v14, 0x400

    new-array v2, v14, [B

    .line 756
    .local v2, "buffer":[B
    :goto_0
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v6, v2, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_1

    .line 757
    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 761
    .end local v2    # "buffer":[B
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v12    # "readcount":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 762
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 763
    const/4 v14, 0x0

    .line 765
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 766
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 767
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 763
    return v14

    .line 760
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffer":[B
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    .restart local v12    # "readcount":I
    :cond_1
    const/4 v14, 0x1

    .line 765
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 766
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 767
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 760
    return v14

    .line 764
    .end local v2    # "buffer":[B
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v12    # "readcount":I
    :catchall_0
    move-exception v14

    .line 765
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 766
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 767
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 764
    throw v14

    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    .local v9, "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v14

    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 761
    .local v5, "fin":Ljava/io/FileInputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private createBackupCurrentWallpaperFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "destImagePath"    # Ljava/lang/String;
    .param p5, "imageFolderpath"    # Ljava/lang/String;
    .param p6, "securityLevel"    # I
    .param p7, "saveKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 304
    const/4 v1, 0x0

    .line 306
    .local v1, "success":Z
    const/4 v0, 0x0

    .line 307
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-ne p2, v6, :cond_3

    .line 308
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 309
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 310
    .local v2, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 311
    invoke-direct {p0, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "wallpaperManager":Landroid/app/WallpaperManager;
    :goto_0
    if-nez v0, :cond_4

    .line 319
    const-string/jumbo v4, "WallpaperBackupRestoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bitmap is null. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v1    # "success":Z
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 329
    invoke-direct {p0, p2, p5, p3, v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupWallpaperXmlFile(ILjava/lang/String;Ljava/lang/String;I)V

    .line 332
    :cond_1
    return v1

    .line 313
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "success":Z
    .restart local v2    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_2
    const-string/jumbo v4, "WallpaperBackupRestoreManager"

    const-string/jumbo v5, "wallpaperDrawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    .end local v2    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_3
    invoke-direct {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getWallpaperLockBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 321
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    if-nez p6, :cond_5

    .line 322
    invoke-direct {p0, p4, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->copyBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_1

    .line 323
    .local v1, "success":Z
    :cond_5
    if-ne p6, v6, :cond_0

    .line 324
    invoke-direct {p0, p4, v0, p7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->copyEncryptBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_1
.end method

.method private createBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string/jumbo v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createBackupFile() which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " basePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v5, 0x0

    .line 254
    .local v5, "imageFolderpath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 256
    .local v8, "destXmlFilePath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 257
    .local v9, "success":Z
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 258
    const-string/jumbo v5, "wallpaper/wallpaper.png"

    .line 259
    .local v5, "imageFolderpath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, "destXmlFilePath":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "destImagePath":Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->deleteFile(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->deleteFile(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    move-object v7, p5

    .line 269
    invoke-direct/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupCurrentWallpaperFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    .line 298
    .local v9, "success":Z
    if-eqz v9, :cond_1

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    :goto_1
    return-object v0

    .line 261
    .end local v4    # "destImagePath":Ljava/lang/String;
    .local v5, "imageFolderpath":Ljava/lang/String;
    .local v8, "destXmlFilePath":Ljava/lang/String;
    .local v9, "success":Z
    :cond_0
    const-string/jumbo v5, "wallpaper/lockscreen_wallpaper.jpg"

    .line 262
    .local v5, "imageFolderpath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "destXmlFilePath":Ljava/lang/String;
    goto :goto_0

    .line 298
    .restart local v4    # "destImagePath":Ljava/lang/String;
    .local v9, "success":Z
    :cond_1
    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    goto :goto_1
.end method

.method private createBackupOriginalWallpaperFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "destImagePath"    # Ljava/lang/String;
    .param p5, "imageFolderpath"    # Ljava/lang/String;
    .param p6, "securityLevel"    # I
    .param p7, "saveKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, "sourceImagePath":Ljava/lang/String;
    if-ne p2, v6, :cond_2

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Android/data/com.sec.android.wallpapercropper2/files/original_file_home.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "sourceImagePath":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 347
    .local v2, "success":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 349
    const-string/jumbo v3, "WallpaperBackupRestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "original image file exists. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-nez p6, :cond_3

    .line 351
    invoke-virtual {p0, v1, p4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 359
    .end local v2    # "success":Z
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 360
    invoke-direct {p0, p2, p5, p3, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupWallpaperXmlFile(ILjava/lang/String;Ljava/lang/String;I)V

    .line 363
    :cond_1
    return v2

    .line 343
    .end local v0    # "file":Ljava/io/File;
    .local v1, "sourceImagePath":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Android/data/com.sec.android.wallpapercropper2/files/original_file_lock.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "sourceImagePath":Ljava/lang/String;
    goto :goto_0

    .line 352
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "success":Z
    :cond_3
    if-ne p6, v6, :cond_0

    .line 353
    invoke-direct {p0, v1, p4, p7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->copyEncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    goto :goto_1

    .line 356
    .local v2, "success":Z
    :cond_4
    const-string/jumbo v3, "WallpaperBackupRestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "original image file does not exists. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createBackupWallpaperXmlFile(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "which"    # I
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const/16 v6, 0x65

    const/4 v1, 0x0

    .line 464
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v8, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/wallpaperbackup/WallpaperUser;>;"
    const/4 v0, 0x0

    .line 466
    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUser;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 467
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUser;

    .end local v0    # "object":Landroid/app/wallpaperbackup/WallpaperUser;
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move v2, v1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 483
    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUser;
    :goto_0
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v7, Landroid/app/wallpaperbackup/GenerateXML;

    invoke-direct {v7, v8}, Landroid/app/wallpaperbackup/GenerateXML;-><init>(Ljava/util/ArrayList;)V

    .line 485
    .local v7, "generateXML":Landroid/app/wallpaperbackup/GenerateXML;
    invoke-virtual {v7, p3, p1, p4}, Landroid/app/wallpaperbackup/GenerateXML;->createResultFile(Ljava/lang/String;II)V

    .line 463
    return-void

    .line 469
    .end local v7    # "generateXML":Landroid/app/wallpaperbackup/GenerateXML;
    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUser;
    :cond_0
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUser;

    .end local v0    # "object":Landroid/app/wallpaperbackup/WallpaperUser;
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move v2, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUser;
    goto :goto_0
.end method

.method private decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 13
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 831
    const/4 v7, 0x0

    .line 833
    .local v7, "result":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v12, "AES/CBC/PKCS5Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 835
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v12

    new-array v6, v12, [B

    .line 836
    .local v6, "iv":[B
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    .line 837
    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 839
    .local v11, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const/16 v12, 0x10

    new-array v9, v12, [B

    .line 840
    .local v9, "salt":[B
    invoke-virtual {p1, v9}, Ljava/io/InputStream;->read([B)I

    .line 841
    invoke-direct {p0, v9, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v10

    .line 842
    .local v10, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    if-eqz v10, :cond_0

    .line 843
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v10, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 844
    new-instance v8, Ljavax/crypto/CipherInputStream;

    invoke-direct {v8, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .local v8, "result":Ljava/io/InputStream;
    move-object v7, v8

    .line 858
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "iv":[B
    .end local v7    # "result":Ljava/io/InputStream;
    .end local v8    # "result":Ljava/io/InputStream;
    .end local v9    # "salt":[B
    .end local v10    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v11    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    :goto_0
    return-object v7

    .line 854
    .restart local v7    # "result":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 855
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 852
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v3

    .line 853
    .local v3, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 850
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 851
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 848
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 849
    .local v5, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 846
    .end local v5    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v4

    .line 847
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 697
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 939
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 940
    nop

    nop

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 943
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 944
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 943
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 945
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 946
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 947
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 949
    return-object v0
.end method

.method private encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 13
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 799
    const/4 v7, 0x0

    .line 801
    .local v7, "result":Ljava/io/OutputStream;
    :try_start_0
    const-string/jumbo v12, "AES/CBC/PKCS5Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 803
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v12

    new-array v6, v12, [B

    .line 804
    .local v6, "iv":[B
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v12, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 805
    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 806
    .local v11, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 808
    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->generateEncryptSalt()[B

    move-result-object v9

    .line 809
    .local v9, "salt":[B
    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 810
    invoke-direct {p0, v9, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v10

    .line 811
    .local v10, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    if-eqz v10, :cond_0

    .line 812
    const/4 v12, 0x1

    invoke-virtual {v0, v12, v10, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 813
    new-instance v8, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v8, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .local v8, "result":Ljava/io/OutputStream;
    move-object v7, v8

    .line 827
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "iv":[B
    .end local v7    # "result":Ljava/io/OutputStream;
    .end local v8    # "result":Ljava/io/OutputStream;
    .end local v9    # "salt":[B
    .end local v10    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v11    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    :goto_0
    return-object v7

    .line 823
    .restart local v7    # "result":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 824
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 821
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v3

    .line 822
    .local v3, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 819
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 820
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 817
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 818
    .local v5, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 815
    .end local v5    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v4

    .line 816
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private generateEncryptSalt()[B
    .locals 3

    .prologue
    .line 707
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 708
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 709
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 711
    return-object v0
.end method

.method private generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 12
    .param p1, "salt"    # [B
    .param p2, "securityPassword"    # Ljava/lang/String;

    .prologue
    .line 715
    const/16 v3, 0x3e8

    .line 716
    .local v3, "iterationCount":I
    const/16 v6, 0x100

    .line 717
    .local v6, "keyLength":I
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 719
    .local v0, "chars":[C
    const/4 v8, 0x0

    .line 721
    .local v8, "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string/jumbo v10, "PBKDF2WithHmacSHA1"

    invoke-static {v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 722
    .local v5, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v7, v0, p1, v3, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 723
    .local v7, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v5, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 724
    .local v4, "key":Ljavax/crypto/SecretKey;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    const-string/jumbo v11, "AES"

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    .local v9, "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    move-object v8, v9

    .line 731
    .end local v4    # "key":Ljavax/crypto/SecretKey;
    .end local v5    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v9    # "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v8

    .line 727
    .restart local v8    # "resultKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v2

    .line 728
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 725
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v1

    .line 726
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 393
    return p3

    .line 395
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getWallpaperLockBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 953
    const/4 v0, 0x0

    .line 955
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 956
    .local v4, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 957
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 959
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 960
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 965
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 969
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 961
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 962
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string/jumbo v5, "WallpaperBackupRestoreManager"

    const-string/jumbo v6, "Can\'t decode file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 964
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 965
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 964
    throw v5
.end method

.method private isLiveWallpaper(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 930
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 931
    .local v1, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 932
    .local v0, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-nez v0, :cond_0

    .line 933
    const/4 v2, 0x0

    return v2

    .line 935
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private loadSettingsLocked(I)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .locals 23
    .param p1, "which"    # I

    .prologue
    .line 399
    const/4 v11, 0x0

    .line 400
    .local v11, "sourceXmlPath":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 401
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/Android/data/com.sec.android.wallpapercropper2/files/backup_home.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 406
    .local v11, "sourceXmlPath":Ljava/lang/String;
    :goto_0
    new-instance v9, Lcom/android/internal/util/JournaledFile;

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ".tmp"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 407
    .local v9, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    .line 408
    .local v8, "file":Ljava/io/File;
    const/4 v12, 0x0

    .line 410
    .local v12, "stream":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 411
    .local v17, "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    const/4 v14, 0x0

    .line 412
    .local v14, "success":Z
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 414
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    .end local v12    # "stream":Ljava/io/InputStream;
    .local v13, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 416
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v19 .. v19}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_10

    move-object/from16 v18, v17

    .line 420
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .local v18, "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :goto_1
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .line 421
    .local v16, "type":I
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 422
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 423
    .local v15, "tag":Ljava/lang/String;
    if-nez v18, :cond_6

    .line 424
    new-instance v17, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    invoke-direct/range {v17 .. v17}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_11

    .line 426
    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .local v17, "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :goto_2
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 427
    :try_start_3
    const-string/jumbo v19, "hw"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 428
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_10

    .line 436
    .end local v15    # "tag":Ljava/lang/String;
    :cond_0
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v18, v17

    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    goto :goto_1

    .line 403
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "stream":Ljava/io/InputStream;
    .end local v14    # "success":Z
    .end local v16    # "type":I
    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .local v11, "sourceXmlPath":Ljava/lang/String;
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/Android/data/com.sec.android.wallpapercropper2/files/backup_lock.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "sourceXmlPath":Ljava/lang/String;
    goto/16 :goto_0

    .line 431
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v14    # "success":Z
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v16    # "type":I
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :cond_2
    :try_start_4
    const-string/jumbo v19, "lw"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_10

    goto :goto_3

    .line 438
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "type":I
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .line 439
    .end local v13    # "stream":Ljava/io/InputStream;
    :goto_4
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    const-string/jumbo v20, "no current wallpaper"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_5
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 454
    :cond_3
    if-eqz v14, :cond_5

    .line 455
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "success parsing xml. "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-object v17

    .line 437
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v16    # "type":I
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :cond_4
    const/4 v14, 0x1

    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .local v12, "stream":Ljava/io/InputStream;
    goto :goto_5

    .line 448
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    .local v12, "stream":Ljava/io/InputStream;
    .local v17, "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_1
    move-exception v4

    .line 449
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 446
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "stream":Ljava/io/InputStream;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_2
    move-exception v3

    .line 447
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .local v3, "e":Ljava/io/IOException;
    :goto_7
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 444
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v12    # "stream":Ljava/io/InputStream;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_3
    move-exception v7

    .line 445
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_8
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 442
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12    # "stream":Ljava/io/InputStream;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_4
    move-exception v6

    .line 443
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_9
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 440
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "stream":Ljava/io/InputStream;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_5
    move-exception v5

    .line 441
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .local v5, "e":Ljava/lang/NullPointerException;
    :goto_a
    const-string/jumbo v19, "WallpaperBackupRestoreManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 459
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :cond_5
    const/16 v19, 0x0

    return-object v19

    .line 438
    .restart local v12    # "stream":Ljava/io/InputStream;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_4

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v17, v18

    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .local v17, "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .local v12, "stream":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 440
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :catch_8
    move-exception v5

    .restart local v5    # "e":Ljava/lang/NullPointerException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto :goto_a

    .end local v5    # "e":Ljava/lang/NullPointerException;
    .end local v12    # "stream":Ljava/io/InputStream;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_9
    move-exception v5

    .restart local v5    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v17, v18

    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto :goto_a

    .line 442
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :catch_a
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto :goto_9

    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "stream":Ljava/io/InputStream;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_b
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v17, v18

    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto :goto_9

    .line 444
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :catch_c
    move-exception v7

    .restart local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto/16 :goto_8

    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v12    # "stream":Ljava/io/InputStream;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_d
    move-exception v7

    .restart local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v17, v18

    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 446
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :catch_e
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto/16 :goto_7

    .end local v3    # "e":Ljava/io/IOException;
    .end local v12    # "stream":Ljava/io/InputStream;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_f
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object/from16 v17, v18

    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto/16 :goto_7

    .line 448
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :catch_10
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v12    # "stream":Ljava/io/InputStream;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :catch_11
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v17, v18

    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v12    # "stream":Ljava/io/InputStream;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v16    # "type":I
    .restart local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :cond_6
    move-object/from16 v17, v18

    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    goto/16 :goto_2

    .end local v15    # "tag":Ljava/lang/String;
    .end local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    :cond_7
    move-object/from16 v17, v18

    .end local v18    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .restart local v17    # "wallpaperData":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    goto/16 :goto_3
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "wallpaper"    # Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    .prologue
    const/4 v1, 0x0

    .line 383
    const-string/jumbo v0, "left"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->left:I

    .line 384
    const-string/jumbo v0, "top"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->top:I

    .line 385
    const-string/jumbo v0, "right"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->right:I

    .line 386
    const-string/jumbo v0, "bottom"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->bottom:I

    .line 387
    const-string/jumbo v0, "rotation"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->rotation:I

    .line 382
    return-void
.end method

.method private pushRestoreFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 553
    const-string/jumbo v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushRestoreFiles which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " basePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v3, 0x0

    .line 556
    .local v3, "imagePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 557
    .local v10, "xmlParser":Landroid/app/wallpaperbackup/XmlParser;
    const/4 v6, 0x0

    .line 558
    .local v6, "item":Landroid/app/wallpaperbackup/WallpaperUser;
    const/4 v8, 0x0

    .line 572
    .local v8, "success":Z
    if-nez v8, :cond_1

    .line 577
    const/4 v9, 0x0

    .line 578
    .local v9, "xmlFileName":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "imagePath":Ljava/lang/String;
    const-string/jumbo v9, "wallpaper.xml"

    .line 586
    .local v9, "xmlFileName":Ljava/lang/String;
    :goto_0
    new-instance v10, Landroid/app/wallpaperbackup/XmlParser;

    .end local v10    # "xmlParser":Landroid/app/wallpaperbackup/XmlParser;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, p1, v0}, Landroid/app/wallpaperbackup/XmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 587
    .local v10, "xmlParser":Landroid/app/wallpaperbackup/XmlParser;
    invoke-virtual {v10}, Landroid/app/wallpaperbackup/XmlParser;->getObject()Landroid/app/wallpaperbackup/WallpaperUser;

    move-result-object v6

    .line 588
    .local v6, "item":Landroid/app/wallpaperbackup/WallpaperUser;
    if-eqz v6, :cond_4

    .line 589
    const/4 v7, 0x0

    .line 590
    .local v7, "path":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 591
    invoke-virtual {v6}, Landroid/app/wallpaperbackup/WallpaperUser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, "path":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_0

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v7    # "path":Ljava/lang/String;
    :cond_0
    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object/from16 v5, p5

    .line 602
    invoke-direct/range {v0 .. v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->pushRestoreWallpaperFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v8

    .line 605
    .end local v3    # "imagePath":Ljava/lang/String;
    .end local v6    # "item":Landroid/app/wallpaperbackup/WallpaperUser;
    .end local v8    # "success":Z
    .end local v9    # "xmlFileName":Ljava/lang/String;
    .end local v10    # "xmlParser":Landroid/app/wallpaperbackup/XmlParser;
    :cond_1
    return v8

    .line 582
    .local v3, "imagePath":Ljava/lang/String;
    .local v6, "item":Landroid/app/wallpaperbackup/WallpaperUser;
    .restart local v8    # "success":Z
    .local v9, "xmlFileName":Ljava/lang/String;
    .local v10, "xmlParser":Landroid/app/wallpaperbackup/XmlParser;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "imagePath":Ljava/lang/String;
    const-string/jumbo v9, "lockscreen.xml"

    .local v9, "xmlFileName":Ljava/lang/String;
    goto :goto_0

    .line 593
    .local v6, "item":Landroid/app/wallpaperbackup/WallpaperUser;
    .local v7, "path":Ljava/lang/String;
    .local v10, "xmlParser":Landroid/app/wallpaperbackup/XmlParser;
    :cond_3
    invoke-virtual {v6}, Landroid/app/wallpaperbackup/WallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v7

    .local v7, "path":Ljava/lang/String;
    goto :goto_1

    .line 599
    .end local v7    # "path":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Item value is null. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private pushRestoreOriginalWallpaperFiles(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperUser;ILjava/lang/String;)Z
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "imagePath"    # Ljava/lang/String;
    .param p4, "item"    # Landroid/app/wallpaperbackup/WallpaperUser;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 639
    const/16 v20, 0x0

    .line 640
    .local v20, "success":Z
    const/4 v14, 0x0

    .line 641
    .local v14, "left":I
    const/16 v21, 0x0

    .line 642
    .local v21, "top":I
    const/16 v16, 0x0

    .line 643
    .local v16, "right":I
    const/4 v10, 0x0

    .line 644
    .local v10, "bottom":I
    const/16 v18, 0x0

    .line 646
    .local v18, "rotation":I
    if-eqz p4, :cond_1

    .line 647
    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getLeftValue()I

    move-result v14

    .line 648
    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getTopValue()I

    move-result v21

    .line 649
    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getRightValue()I

    move-result v16

    .line 650
    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getBottomValue()I

    move-result v10

    .line 651
    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperUser;->getRotationValue()I

    move-result v18

    .line 655
    :goto_0
    new-instance v15, Landroid/graphics/Rect;

    move/from16 v0, v21

    move/from16 v1, v16

    invoke-direct {v15, v14, v0, v1, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 657
    .local v15, "rect":Landroid/graphics/Rect;
    const-string/jumbo v4, "WallpaperBackupRestoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pushRestoreOriginalWallpaperFiles which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 658
    const-string/jumbo v6, " imagePath="

    .line 657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 659
    const-string/jumbo v6, " left="

    .line 657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 660
    const-string/jumbo v6, " top="

    .line 657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 661
    const-string/jumbo v6, " right="

    .line 657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 662
    const-string/jumbo v6, " bottom="

    .line 657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 663
    const-string/jumbo v6, " rotation="

    .line 657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 666
    .local v8, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v18

    int-to-float v4, v0

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 669
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v22

    .line 670
    .local v22, "wallpaperManager":Landroid/app/WallpaperManager;
    if-nez p5, :cond_2

    .line 671
    invoke-static/range {p3 .. p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 672
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 673
    .local v17, "rotatedBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    const/16 v20, 0x1

    .line 691
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v22    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_0
    :goto_1
    return v20

    .line 653
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "rect":Landroid/graphics/Rect;
    :cond_1
    const-string/jumbo v4, "WallpaperBackupRestoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Item value is null. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 675
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    .restart local v15    # "rect":Landroid/graphics/Rect;
    .restart local v22    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_0

    .line 676
    :try_start_1
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 677
    .local v19, "stream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 678
    .local v11, "decryptStream":Ljava/io/InputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 679
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 680
    .restart local v17    # "rotatedBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    .line 681
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 682
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 683
    const/16 v20, 0x1

    goto :goto_1

    .line 687
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "decryptStream":Ljava/io/InputStream;
    .end local v17    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "stream":Ljava/io/InputStream;
    .end local v22    # "wallpaperManager":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v13

    .line 688
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 685
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 686
    .local v12, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private pushRestoreWallpaperFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "imagePath"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 609
    const-string/jumbo v7, "WallpaperBackupRestoreManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pushRestoreWallpaperFiles which="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " imagePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v5, 0x0

    .line 612
    .local v5, "success":Z
    const/4 v3, 0x0

    .line 614
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 615
    .local v6, "wallpaperManager":Landroid/app/WallpaperManager;
    if-nez p4, :cond_1

    .line 616
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v4, "stream":Ljava/io/InputStream;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v6, v4, v7, v8, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 618
    const/4 v5, 0x1

    move-object v3, v4

    .line 631
    .end local v4    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 634
    .end local v6    # "wallpaperManager":Landroid/app/WallpaperManager;
    :goto_1
    return v5

    .line 619
    .restart local v3    # "stream":Ljava/io/InputStream;
    .restart local v6    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_1
    const/4 v7, 0x1

    if-ne p4, v7, :cond_0

    .line 620
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 621
    .restart local v4    # "stream":Ljava/io/InputStream;
    :try_start_3
    invoke-direct {p0, v4, p5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    .end local v3    # "stream":Ljava/io/InputStream;
    move-result-object v0

    .line 622
    .local v0, "decryptStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v0, v7, v8, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    .line 623
    invoke-virtual {p0, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 624
    const/4 v5, 0x1

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/InputStream;
    .local v3, "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 628
    .end local v0    # "decryptStream":Ljava/io/InputStream;
    .end local v6    # "wallpaperManager":Landroid/app/WallpaperManager;
    .local v3, "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 629
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 631
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 626
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 627
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 631
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 630
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    .line 631
    :goto_4
    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 630
    throw v7

    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local v6    # "wallpaperManager":Landroid/app/WallpaperManager;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/InputStream;
    .local v3, "stream":Ljava/io/InputStream;
    goto :goto_4

    .line 626
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_3

    .line 628
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "resultCode"    # Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    .param p5, "errorCode"    # Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    .param p6, "requiredSize"    # I
    .param p7, "source"    # Ljava/lang/String;
    .param p8, "sessionTime"    # Ljava/lang/String;
    .param p9, "extraResultCode"    # Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .prologue
    .line 863
    const-string/jumbo v1, "WallpaperBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "responseToKies which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 864
    const-string/jumbo v3, " action="

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 865
    const-string/jumbo v3, " resultCode="

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 866
    const-string/jumbo v3, " errorCode="

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 867
    const-string/jumbo v3, " requiredSize="

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 868
    const-string/jumbo v3, " extraResultCode="

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 871
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string/jumbo v1, "RESULT"

    invoke-virtual {p4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 873
    const-string/jumbo v1, "ERR_CODE"

    invoke-virtual {p5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 874
    const-string/jumbo v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    const-string/jumbo v1, "SOURCE"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    if-eqz p8, :cond_0

    .line 877
    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    :cond_0
    const-string/jumbo v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 901
    const-string/jumbo v1, "WallpaperBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcast. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void
.end method


# virtual methods
.method closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 1008
    if-nez p1, :cond_0

    .line 1009
    return-void

    .line 1013
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "WallpaperBackupRestoreManager"

    const-string/jumbo v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "desPath"    # Ljava/lang/String;

    .prologue
    .line 974
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 975
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 976
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 979
    :cond_0
    const-wide/16 v4, 0x0

    .line 980
    .local v4, "fsize":J
    const/4 v8, 0x0

    .line 981
    .local v8, "fin":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 982
    .local v10, "fout":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 983
    .local v1, "inc":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 986
    .local v6, "outc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .local v9, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 989
    .local v11, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    move-result-object v1

    .line 990
    .local v1, "inc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 992
    .local v6, "outc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 994
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 995
    const/4 v2, 0x1

    .line 1000
    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 1001
    invoke-virtual {p0, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 1002
    invoke-virtual {p0, v9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 1003
    invoke-virtual {p0, v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 995
    return v2

    .line 996
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .local v1, "inc":Ljava/nio/channels/FileChannel;
    .local v6, "outc":Ljava/nio/channels/FileChannel;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 997
    .end local v1    # "inc":Ljava/nio/channels/FileChannel;
    .end local v6    # "outc":Ljava/nio/channels/FileChannel;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 998
    const/4 v2, 0x0

    .line 1000
    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 1001
    invoke-virtual {p0, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 1002
    invoke-virtual {p0, v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 1003
    invoke-virtual {p0, v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 998
    return v2

    .line 999
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1000
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 1001
    invoke-virtual {p0, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 1002
    invoke-virtual {p0, v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 1003
    invoke-virtual {p0, v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 999
    throw v2

    .restart local v1    # "inc":Ljava/nio/channels/FileChannel;
    .restart local v6    # "outc":Ljava/nio/channels/FileChannel;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "inc":Ljava/nio/channels/FileChannel;
    .end local v6    # "outc":Ljava/nio/channels/FileChannel;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v10, v11

    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .local v10, "fout":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .line 996
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "inc":Ljava/nio/channels/FileChannel;
    .restart local v6    # "outc":Ljava/nio/channels/FileChannel;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .local v10, "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "inc":Ljava/nio/channels/FileChannel;
    .end local v6    # "outc":Ljava/nio/channels/FileChannel;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "fout":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .local v10, "fout":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "sessionTime"    # Ljava/lang/String;
    .param p7, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBackupWallpaper which="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 172
    const-string/jumbo v4, " basePath="

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    const-string/jumbo v4, " source="

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .line 176
    .local v6, "resultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    sget-object v11, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .line 177
    .local v11, "extraResultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .line 178
    .local v7, "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    const/4 v8, 0x0

    .line 180
    .local v8, "requiredSize":I
    const-wide/16 v16, 0x0

    .line 181
    .local v16, "availableBlocks":J
    const-wide/16 v18, 0x0

    .line 182
    .local v18, "blockSizeInBytes":J
    const-wide/32 v20, 0x40000000

    .line 184
    .local v20, "freeSpaceInBytes":J
    const/4 v5, 0x0

    .line 185
    .local v5, "action":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 186
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    .line 192
    .local v5, "action":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v23, Landroid/os/StatFs;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 193
    .local v23, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v16

    .line 194
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 195
    mul-long v20, v16, v18

    .line 202
    const-wide/32 v2, 0xa00000

    cmp-long v2, v20, v2

    if-gez v2, :cond_2

    .line 203
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StatFs : availableBlocks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    const-string/jumbo v4, " blockSizeInBytes="

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    const-string/jumbo v4, " freeSpaceInBytes="

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .line 207
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .line 208
    const/high16 v8, 0xa00000

    :cond_0
    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 247
    invoke-direct/range {v2 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V

    .line 170
    return-void

    .line 188
    .end local v23    # "stat":Landroid/os/StatFs;
    .local v5, "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    .local v5, "action":Ljava/lang/String;
    goto :goto_0

    .line 196
    :catch_0
    move-exception v15

    .line 197
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .end local v6    # "resultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .end local v7    # "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    sget-object v11, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .end local v11    # "extraResultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V

    .line 199
    return-void

    .line 210
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v6    # "resultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    .restart local v7    # "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    .restart local v11    # "extraResultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    .restart local v23    # "stat":Landroid/os/StatFs;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 211
    const/16 v22, 0x0

    .line 213
    .local v22, "isCustom":Z
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 214
    invoke-direct/range {p0 .. p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 215
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    const-string/jumbo v3, "LiveWallpaper is true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    :goto_2
    sget-object v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    if-ne v11, v2, :cond_8

    .line 237
    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .line 238
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android.wallpaper.settings_systemui_transparency"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    const/16 v22, 0x1

    .line 218
    :goto_3
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLAG_SYSTEM isCustom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz v22, :cond_3

    .line 220
    const/4 v11, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .end local v11    # "extraResultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    move-result-object v11

    .line 221
    .restart local v11    # "extraResultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLAG_SYSTEM extraResultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 217
    :cond_5
    const/16 v22, 0x0

    goto :goto_3

    .line 225
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v25

    .line 226
    .local v25, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual/range {v25 .. v25}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v24

    .line 228
    .local v24, "type":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const/4 v4, 0x1

    const/4 v9, -0x2

    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_7

    const/16 v22, 0x1

    .line 229
    :goto_4
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLAG_LOCK isCustom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-nez v24, :cond_3

    if-eqz v22, :cond_3

    .line 231
    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->createBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .end local v11    # "extraResultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    move-result-object v11

    .line 232
    .restart local v11    # "extraResultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLAG_LOCK extraResultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 228
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    .line 241
    .end local v24    # "type":I
    .end local v25    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_8
    sget-object v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OLD_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    if-eq v11, v2, :cond_9

    sget-object v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_NEW_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    if-ne v11, v2, :cond_0

    .line 242
    :cond_9
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->PARTIAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    goto/16 :goto_1
.end method

.method public startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 493
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRestoreWallpaper which="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 494
    const-string/jumbo v4, " basePath="

    .line 493
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 495
    const-string/jumbo v4, " source="

    .line 493
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .line 498
    .local v6, "resultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .line 499
    .local v7, "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    const/4 v8, 0x0

    .line 501
    .local v8, "requiredSize":I
    const-wide/16 v16, 0x0

    .line 502
    .local v16, "availableBlocks":J
    const-wide/16 v18, 0x0

    .line 503
    .local v18, "blockSizeInBytes":J
    const-wide/32 v20, 0x40000000

    .line 505
    .local v20, "freeSpaceInBytes":J
    const/4 v5, 0x0

    .line 506
    .local v5, "action":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 507
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    .line 513
    .local v5, "action":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v22, Landroid/os/StatFs;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 514
    .local v22, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v16

    .line 515
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 516
    mul-long v20, v16, v18

    .line 523
    const-wide/32 v2, 0xa00000

    cmp-long v2, v20, v2

    if-gez v2, :cond_1

    .line 524
    const-string/jumbo v2, "WallpaperBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StatFs : availableBlocks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 525
    const-string/jumbo v4, " blockSizeInBytes="

    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 526
    const-string/jumbo v4, " freeSpaceInBytes="

    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .line 528
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .line 529
    const/high16 v8, 0xa00000

    .line 549
    :goto_1
    sget-object v11, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V

    .line 492
    return-void

    .line 509
    .end local v22    # "stat":Landroid/os/StatFs;
    .local v5, "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    .local v5, "action":Ljava/lang/String;
    goto :goto_0

    .line 517
    :catch_0
    move-exception v15

    .line 518
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 519
    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .end local v6    # "resultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    .end local v7    # "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    sget-object v11, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->responseToKies(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;)V

    .line 520
    return-void

    .line 531
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v6    # "resultCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    .restart local v7    # "errorCode":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;
    .restart local v22    # "stat":Landroid/os/StatFs;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p6

    .line 532
    invoke-direct/range {v9 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->pushRestoreFiles(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v23

    .line 533
    .local v23, "success":Z
    if-nez v23, :cond_2

    .line 534
    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    .line 535
    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ERR_CODE;

    goto :goto_1

    .line 537
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android.wallpaper.settings_systemui_transparency"

    .line 539
    const/4 v4, 0x0

    const/4 v9, -0x2

    .line 538
    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 541
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    .line 542
    const/4 v4, 0x0

    const/4 v9, -0x2

    .line 541
    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper"

    .line 544
    const/4 v4, 0x1

    const/4 v9, -0x2

    .line 543
    invoke-static {v2, v3, v4, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1
.end method

.method public startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 489
    const-string/jumbo v6, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    return-void
.end method
