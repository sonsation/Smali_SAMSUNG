.class public Lcom/android/server/enterprise/lso/LSOService;
.super Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;
.source "LSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/lso/LSOService$1;
    }
.end annotation


# static fields
.field private static final CUSTOM_LAYER:I = 0x2

.field private static final DEBUG:Z

.field private static final DEFAULT_LAYER:I = 0x1

.field private static final EMERGENCY_PHONE_LAYER:I = 0x3

.field private static final MAX_SUPPORTED_LAYER:I = 0x3

.field private static final NO_ADMIN_SET:I = -0x1

.field private static final RESET_ALL_LAYER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LSOService"

.field private static final singleAdmin:Z = true


# instance fields
.field private lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

.field private mOverlayAdminUid:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperAdminUid:I

.field private screenDimesions:Landroid/graphics/Point;

.field private final storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/enterprise/lso/LSOService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->updateSystemUIMonitor(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;-><init>()V

    .line 99
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 109
    new-instance v3, Lcom/android/server/enterprise/lso/LSOService$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/lso/LSOService$1;-><init>(Lcom/android/server/enterprise/lso/LSOService;)V

    iput-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    .line 124
    new-instance v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    .line 125
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 126
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getWallpaperAdminUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 127
    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminPref()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 131
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    .line 132
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 133
    .local v2, "winMgr":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 135
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 140
    :goto_0
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/samsung/android/knox/lockscreen/LSOItemData;

    iput-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 141
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_2

    .line 142
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlay(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v4

    aput-object v4, v3, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 144
    .restart local v1    # "i":I
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method private copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 754
    const-string/jumbo v9, "/data/system/enterprise/temp"

    invoke-static {v9}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 755
    return-object v11

    .line 757
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/data/system/enterprise/temp/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 758
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 757
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "candidatePath":Ljava/lang/String;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 763
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 764
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 766
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 768
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v7, "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "length":I
    if-lez v8, :cond_3

    .line 769
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 773
    .end local v8    # "length":I
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 774
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v9, "LSOService"

    const-string/jumbo v10, "copyFileFromParcel() : failed to copy image from parcel "

    invoke-static {v9, v10, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    if-eqz v4, :cond_1

    .line 779
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 784
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 786
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 775
    :cond_2
    :goto_3
    return-object v11

    .line 772
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "length":I
    :cond_3
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 777
    if-eqz v5, :cond_4

    .line 779
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 784
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 786
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 792
    :cond_5
    :goto_5
    return-object v1

    .line 780
    :catch_1
    move-exception v2

    .line 781
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "LSOService"

    const-string/jumbo v10, "failed to close inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 787
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 788
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v9, "LSOService"

    const-string/jumbo v10, "failed to close outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 780
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "length":I
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 781
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v9, "LSOService"

    const-string/jumbo v10, "failed to close inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 787
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 788
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v9, "LSOService"

    const-string/jumbo v10, "failed to close outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 776
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 777
    :goto_6
    if-eqz v4, :cond_6

    .line 779
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 784
    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    .line 786
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 776
    :cond_7
    :goto_8
    throw v9

    .line 780
    :catch_5
    move-exception v2

    .line 781
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v10, "LSOService"

    const-string/jumbo v11, "failed to close inputstream"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 787
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 788
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v10, "LSOService"

    const-string/jumbo v11, "failed to close outputstream"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 776
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 773
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v3

    .restart local v3    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "ex":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private declared-synchronized deleteFiles(I)V
    .locals 7
    .param p1, "layer"    # I

    .prologue
    monitor-enter p0

    .line 606
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 608
    .local v2, "token":J
    if-nez p1, :cond_0

    .line 609
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-gt v1, v4, :cond_1

    .line 610
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/system/enterprise/lso/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    .end local v1    # "i":I
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/system/enterprise/lso/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 618
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    .line 605
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteFiles() : failed layer - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 618
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 617
    .restart local v2    # "token":J
    :catchall_1
    move-exception v4

    .line 618
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private deleteWallpaperFiles()V
    .locals 5

    .prologue
    .line 591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 593
    .local v2, "token":J
    :try_start_0
    const-string/jumbo v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-static {v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 594
    const-string/jumbo v1, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "ignore":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "LSOService"

    const-string/jumbo v4, "deleteWallpaperFiles() : failed but ignore this error"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    sget-boolean v1, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 600
    .end local v0    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 601
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 600
    throw v1
.end method

.method private enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_LOCKSCREEN"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 529
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 528
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 527
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_LOCKSCREEN"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 519
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 518
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 517
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    .line 506
    const-string/jumbo v1, "enterprise_policy_new"

    .line 505
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "lockscreen_overlay"

    return-object v0
.end method

.method private sendConfigChangeNotification(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 569
    const/4 v7, 0x2

    invoke-virtual {p0, v8, v7}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v3

    .line 570
    .local v3, "isWallpaperConfigured":Z
    invoke-virtual {p0, v8, v6}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    .line 571
    .local v2, "isInvisibleOverlayConfigured":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 573
    .local v4, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.KNOX_WALLPAPER_ENABLED_INTERNAL"

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    iget-object v6, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 576
    const-string/jumbo v6, "LSOService"

    const-string/jumbo v7, "sendConfigChangeNotification() - done"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenInvisibleOverlaySystemUI(IZ)V

    .line 584
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenWallpaperSystemUI(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 568
    :goto_2
    return-void

    .line 574
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 577
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 578
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "LSOService"

    const-string/jumbo v7, "sendConfigChangeNotification() : failed to send intent."

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 579
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 580
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    throw v6

    .line 585
    :catch_1
    move-exception v0

    .line 586
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "LSOService"

    const-string/jumbo v7, "sendConfigChangeNotification() : failed to update system ui."

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private setLockscreenInvisibleOverlaySystemUI(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 805
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    .line 806
    .local v1, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockscreenInvisibleOverlayAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 802
    .end local v1    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "setLockscreenInvisibleOverlaySystemUI() failed. "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 809
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 810
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    throw v4
.end method

.method private setLockscreenWallpaperSystemUI(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 817
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    .line 818
    .local v1, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockscreenWallpaperAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    .end local v1    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "setLockscreenWallpaperSystemUI() failed. "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 821
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 822
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 821
    throw v4
.end method

.method private updateSystemUIMonitor(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 798
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenInvisibleOverlaySystemUI(IZ)V

    .line 799
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenWallpaperSystemUI(IZ)V

    .line 797
    return-void
.end method


# virtual methods
.method public canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "feature"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "allowedCnt":I
    const/4 v2, 0x0

    .line 342
    .local v2, "result":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 343
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 344
    .local v3, "uid":I
    if-eq v7, p2, :cond_0

    if-nez p2, :cond_6

    .line 345
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v4, v3, :cond_2

    .line 346
    :cond_1
    const/4 v0, 0x1

    .line 349
    :cond_2
    if-eq v7, p2, :cond_3

    if-nez p2, :cond_7

    .line 350
    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v4, v7, :cond_4

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v3, :cond_5

    .line 351
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 356
    .end local v3    # "uid":I
    :cond_5
    :goto_2
    if-ne v7, p2, :cond_9

    .line 357
    if-lt v0, v8, :cond_8

    const/4 v2, 0x1

    .line 361
    :goto_3
    const-string/jumbo v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "canConfigure("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLSOFeatureName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return v2

    .line 344
    .restart local v3    # "uid":I
    :cond_6
    const/4 v4, 0x1

    if-ne v4, p2, :cond_2

    goto :goto_0

    .line 349
    :cond_7
    if-ne v8, p2, :cond_5

    goto :goto_1

    .line 353
    .end local v3    # "uid":I
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "canConfigure() Unhandled exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 359
    :cond_9
    if-lez v0, :cond_a

    const/4 v2, 0x1

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public declared-synchronized copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "breadth"    # I

    .prologue
    monitor-enter p0

    .line 747
    :try_start_0
    const-string/jumbo v1, "%s_%s%s_%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 748
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 747
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "destFile":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "destFile":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized copyFiles(ILcom/samsung/android/knox/lockscreen/LSOItemData;I)Z
    .locals 8
    .param p1, "adminUid"    # I
    .param p2, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p3, "layer"    # I

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 623
    const/4 v2, 0x0

    .line 624
    .local v2, "retVal":Z
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/system/enterprise/lso/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "layerDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 628
    .local v4, "token":J
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 630
    const-string/jumbo v3, "/data/system/enterprise"

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_0

    .line 647
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 631
    return v7

    .line 634
    :cond_0
    :try_start_3
    const-string/jumbo v3, "/data/system/enterprise/lso"

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    .line 647
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 635
    return v7

    .line 638
    :cond_1
    :try_start_5
    invoke-static {v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    .line 647
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 639
    return v7

    .line 642
    :cond_2
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {p0, p2, v3, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v2

    .line 643
    .local v2, "retVal":Z
    const/4 v2, 0x1

    .line 647
    .local v2, "retVal":Z
    :try_start_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    :goto_0
    if-nez v2, :cond_3

    .line 652
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 654
    :cond_3
    const-string/jumbo v3, "LSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "copyFiles1() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 655
    return v2

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v3, "LSOService"

    const-string/jumbo v6, "copyFiles1() error occurs. "

    invoke-static {v3, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 647
    :try_start_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "layerDir":Ljava/lang/String;
    .end local v4    # "token":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 646
    .restart local v1    # "layerDir":Ljava/lang/String;
    .restart local v4    # "token":J
    :catchall_1
    move-exception v3

    .line 647
    :try_start_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public declared-synchronized copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z
    .locals 15
    .param p1, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    monitor-enter p0

    .line 660
    if-nez p1, :cond_0

    .line 661
    const/4 v12, 0x1

    monitor-exit p0

    return v12

    .line 664
    :cond_0
    const/4 v12, 0x0

    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 666
    .local v3, "breadth":Ljava/lang/Integer;
    const/4 v9, 0x1

    .line 668
    .local v9, "retVal":Z
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v11

    .line 669
    .local v11, "type":I
    packed-switch v11, :pswitch_data_0

    .line 718
    .end local v9    # "retVal":Z
    :cond_1
    :goto_0
    if-eqz v9, :cond_7

    .line 719
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v2

    .line 720
    .local v2, "attrSet":Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    if-eqz v2, :cond_7

    const-string/jumbo v12, "android:src"

    invoke-virtual {v2, v12}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 721
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 722
    const-string/jumbo v13, "android:src"

    invoke-virtual {v2, v13}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 721
    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 723
    .local v10, "tempFilePath":Ljava/lang/String;
    if-nez v10, :cond_8

    .line 724
    const-string/jumbo v12, "LSOService"

    const-string/jumbo v13, "copyFiles2 - attrSet ATTR_IMAGE_SRC : file no created"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    const/4 v12, 0x0

    monitor-exit p0

    return v12

    .line 671
    .end local v2    # "attrSet":Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    .restart local v9    # "retVal":Z
    :pswitch_0
    :try_start_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    move-object v7, v0

    .line 672
    .local v7, "itemContainer":Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 673
    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 674
    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v13

    .line 673
    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 675
    .restart local v10    # "tempFilePath":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 676
    const-string/jumbo v12, "LSOService"

    const-string/jumbo v13, "copyFiles2 - LSO_ITEM_TYPE_CONTAINER : file no created"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 677
    const/4 v12, 0x0

    monitor-exit p0

    return v12

    .line 680
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1, v12}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 682
    .local v6, "imagePath":Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 683
    if-nez v6, :cond_3

    .line 684
    const/4 v9, 0x0

    goto :goto_0

    .line 687
    :cond_3
    invoke-virtual {v7, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .line 690
    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    .end local v9    # "retVal":Z
    .local v5, "i":I
    :goto_1
    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v12

    if-ge v5, v12, :cond_1

    if-eqz v9, :cond_1

    .line 691
    invoke-virtual {v7, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v12

    add-int/lit8 v13, p3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0, v13}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z

    move-result v9

    .line 690
    .local v9, "retVal":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 697
    .end local v5    # "i":I
    .end local v7    # "itemContainer":Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
    .local v9, "retVal":Z
    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    move-object v8, v0

    .line 698
    .local v8, "itemImage":Lcom/samsung/android/knox/lockscreen/LSOItemImage;
    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 699
    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 700
    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v13

    .line 699
    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 701
    .restart local v10    # "tempFilePath":Ljava/lang/String;
    if-nez v10, :cond_5

    .line 702
    const-string/jumbo v12, "LSOService"

    const-string/jumbo v13, "copyFiles2 - LSO_ITEM_TYPE_IMAGE : file no created"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 703
    const/4 v12, 0x0

    monitor-exit p0

    return v12

    .line 706
    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1, v12}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 708
    .restart local v6    # "imagePath":Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 709
    if-nez v6, :cond_6

    .line 710
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 713
    :cond_6
    invoke-virtual {v8, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 738
    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v8    # "itemImage":Lcom/samsung/android/knox/lockscreen/LSOItemImage;
    .end local v9    # "retVal":Z
    .end local v10    # "tempFilePath":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_0
    move-exception v4

    .line 739
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v12, "LSOService"

    const-string/jumbo v13, "copyFiles2() - failed. "

    invoke-static {v12, v13, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 740
    const/4 v9, 0x0

    .line 742
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_2
    const-string/jumbo v12, "LSOService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "copyFiles2() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", ret ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 743
    return v9

    .line 728
    .restart local v2    # "attrSet":Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .restart local v10    # "tempFilePath":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_8
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1, v12}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 730
    .restart local v6    # "imagePath":Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 731
    if-nez v6, :cond_9

    .line 732
    const/4 v9, 0x0

    .restart local v9    # "retVal":Z
    goto :goto_2

    .line 734
    .end local v9    # "retVal":Z
    :cond_9
    const-string/jumbo v12, "android:src"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .end local v2    # "attrSet":Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .end local v3    # "breadth":Ljava/lang/Integer;
    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    .end local v11    # "type":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 827
    iget-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    .line 828
    const-string/jumbo v5, "android.permission.DUMP"

    .line 827
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 829
    const-string/jumbo v4, "Permission Denial: can\'t dump LSOService"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    return-void

    .line 832
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 834
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x2

    invoke-virtual {p0, v6, v4}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 835
    .local v0, "isConfigured":Z
    const-string/jumbo v4, "LOCKSCREEN_WALLPAPER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 836
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    if-eqz v0, :cond_1

    .line 838
    const-string/jumbo v4, "  AdminUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v6, v4}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 842
    const-string/jumbo v4, "LOCKSCREEN_OVERLAY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    if-eqz v0, :cond_4

    .line 845
    const-string/jumbo v4, "  AdminUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 846
    const/4 v2, 0x1

    .local v2, "layer":I
    :goto_0
    const/4 v4, 0x3

    if-gt v2, v4, :cond_3

    .line 847
    invoke-virtual {p0, v6, v2}, Lcom/android/server/enterprise/lso/LSOService;->getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v1

    .line 848
    .local v1, "item":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    if-eqz v1, :cond_2

    .line 849
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string/jumbo v4, "    Layer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 853
    .end local v1    # "item":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    :cond_3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .end local v2    # "layer":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "layer"    # I

    .prologue
    .line 212
    const-string/jumbo v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getData() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 214
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 219
    const-string/jumbo v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getData() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 496
    sget-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 497
    const-string/jumbo v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreferences() - lsoPref = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    return-object v0
.end method

.method public isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "feature"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 316
    const/4 v1, 0x0

    .line 319
    .local v1, "resultCnt":I
    if-eq v3, p2, :cond_0

    if-nez p2, :cond_4

    .line 320
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v2, v3, :cond_1

    .line 321
    const/4 v1, 0x1

    .line 324
    :cond_1
    if-eq v3, p2, :cond_2

    if-nez p2, :cond_5

    .line 325
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v2, v3, :cond_3

    .line 326
    add-int/lit8 v1, v1, 0x1

    .line 329
    :cond_3
    if-ne v3, p2, :cond_7

    .line 330
    if-lt v1, v4, :cond_6

    const/4 v0, 0x1

    .line 334
    .local v0, "result":Z
    :goto_2
    const-string/jumbo v2, "LSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isConfigured("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLSOFeatureName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return v0

    .line 319
    .end local v0    # "result":Z
    :cond_4
    const/4 v2, 0x1

    if-ne v2, p2, :cond_1

    goto :goto_0

    .line 324
    :cond_5
    if-ne v4, p2, :cond_3

    goto :goto_1

    .line 330
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_2

    .line 332
    .end local v0    # "result":Z
    :cond_7
    if-lez v1, :cond_8

    const/4 v0, 0x1

    .restart local v0    # "result":Z
    goto :goto_2

    .end local v0    # "result":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_2
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 794
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 536
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 561
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 562
    const/4 v2, 0x0

    .line 561
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 563
    .local v0, "userId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 564
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->updateSystemUIMonitor(I)V

    .line 560
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 542
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne p1, v1, :cond_0

    .line 543
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 544
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 545
    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 546
    iput-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 547
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v4, v1, v0

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne p1, v1, :cond_1

    .line 553
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 554
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 555
    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 540
    :cond_1
    return-void
.end method

.method public resetData(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "layer"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 225
    const-string/jumbo v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetData() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v9, 0x0

    .line 227
    .local v9, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 230
    .local v6, "userId":I
    if-ltz p2, :cond_0

    if-le p2, v5, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid layer. Layer must be 0...3 but requseted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    const-string/jumbo v0, "LSOService"

    const-string/jumbo v1, "resetData() : Not allowed to reset Overlay"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 240
    :cond_2
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v0, v1, :cond_8

    .line 241
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 242
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 243
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 245
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 246
    iput-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 249
    :cond_3
    if-nez p2, :cond_4

    .line 250
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, v5, :cond_5

    .line 251
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v4, v0, v7

    .line 250
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 254
    .end local v7    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v4, v0, p2

    .line 257
    :cond_5
    const/4 v9, 0x1

    .line 259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 262
    .local v10, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "LSOService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string/jumbo v1, " has reset banner settings."

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    .end local v10    # "psToken":J
    :goto_1
    if-eqz v9, :cond_6

    .line 277
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 224
    :cond_6
    return-void

    .line 264
    .restart local v10    # "psToken":J
    :catch_0
    move-exception v8

    .line 265
    .local v8, "ignore":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 266
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 268
    .end local v8    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 269
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    throw v0

    .line 273
    .end local v10    # "psToken":J
    :cond_8
    const-string/jumbo v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetData() : requested uid is diffren with present admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetWallpaper(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 282
    const-string/jumbo v0, "LSOService"

    const-string/jumbo v1, "resetWallpaper()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v7, 0x0

    .line 284
    .local v7, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 285
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 287
    .local v6, "userId":I
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string/jumbo v0, "LSOService"

    const-string/jumbo v1, "Not allowed to reset Wallpaper"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void

    .line 292
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne v0, v1, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 294
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 296
    const/4 v7, 0x1

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 301
    .local v8, "token":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "LSOService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const-string/jumbo v1, " has reset banner wallpaper."

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 300
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    .end local v8    # "token":J
    :cond_1
    if-eqz v7, :cond_2

    .line 310
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 281
    :cond_2
    return-void

    .line 303
    .restart local v8    # "token":J
    :catchall_0
    move-exception v0

    .line 304
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    throw v0
.end method

.method public declared-synchronized setData(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
    .locals 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p3, "layer"    # I

    .prologue
    monitor-enter p0

    .line 149
    :try_start_0
    const-string/jumbo v2, "LSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setData() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 152
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    .line 153
    .local v14, "userId":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    .local v11, "uid":I
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_0

    const/4 v2, 0x3

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 157
    :cond_0
    :try_start_1
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string/jumbo v3, "Invalid layer. Layer must be 1...3"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :catchall_0
    move-exception v2

    .line 193
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    .line 192
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v11    # "uid":I
    .end local v14    # "userId":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 161
    .restart local v11    # "uid":I
    .restart local v14    # "userId":I
    :cond_1
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    const-string/jumbo v2, "LSOService"

    const-string/jumbo v3, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 166
    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    .line 167
    const-string/jumbo v3, "phone"

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 169
    .local v10, "telMgr":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    :cond_3
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(ILcom/samsung/android/knox/lockscreen/LSOItemData;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 193
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 175
    const/4 v2, -0x4

    monitor-exit p0

    return v2

    .line 170
    :cond_4
    :try_start_7
    const-string/jumbo v2, "LSOService"

    const-string/jumbo v3, "setData() failed because telephony is not supported."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 193
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 171
    const/4 v2, -0x3

    monitor-exit p0

    return v2

    .line 178
    :cond_5
    :try_start_9
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v4, v11

    iget-object v8, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z

    move-result v9

    .line 179
    .local v9, "result":Z
    if-nez v9, :cond_7

    .line 180
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 181
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v3, 0x0

    aput-object v3, v2, p3

    .line 182
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 183
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 185
    :cond_6
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 193
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 186
    const/4 v2, -0x4

    monitor-exit p0

    return v2

    .line 189
    :cond_7
    :try_start_b
    iput v11, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 190
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object p2, v2, p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 193
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    .line 195
    invoke-direct {p0, v14}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v12

    .line 201
    .local v12, "token":J
    :try_start_d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "LSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    const-string/jumbo v3, " has changed banner settings."

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 200
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v8, v14

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 204
    :try_start_e
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 208
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 203
    :catchall_2
    move-exception v2

    .line 204
    :try_start_f
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
.end method

.method public setPreferences(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pref"    # Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x6

    const/4 v2, 0x1

    .line 457
    const/4 v7, 0x1

    .line 459
    .local v7, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 461
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v0, v4, :cond_0

    .line 462
    const-string/jumbo v0, "LSOService"

    const-string/jumbo v1, "setPreferences() : There is no configured data from admin. "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return v3

    .line 466
    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v0, v1, :cond_1

    .line 467
    const-string/jumbo v0, "LSOService"

    const-string/jumbo v1, "setPreferences() : Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return v4

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 472
    const-string/jumbo v0, "LSOService"

    const-string/jumbo v1, "setPreferences() : layer doesn\'t configure so cannot set pref."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return v3

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateAdminPref(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z

    move-result v7

    .line 479
    .local v7, "result":Z
    if-eqz v7, :cond_3

    .line 480
    iput-object p2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 484
    .local v8, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "LSOService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    const-string/jumbo v1, " has changed banner settings."

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 486
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 483
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    .end local v8    # "psToken":J
    :cond_3
    if-eqz v7, :cond_4

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 487
    .restart local v8    # "psToken":J
    :catchall_0
    move-exception v0

    .line 488
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    throw v0

    .line 492
    .end local v8    # "psToken":J
    :cond_4
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public setWallpaper(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "imageFilePath"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 366
    const-string/jumbo v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWallpaper("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 368
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 369
    .local v10, "userId":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    .line 370
    .local v18, "uid":I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "setWallpaper() : Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v4, -0x1

    return v4

    .line 374
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 375
    :cond_1
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "setWallpaper() : imageFilePath or image is null, please check path"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v4, -0x4

    return v4

    .line 379
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 380
    .local v15, "tempFilePath":Ljava/lang/String;
    if-nez v15, :cond_3

    .line 381
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "file not created"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v4, -0x4

    return v4

    .line 384
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 385
    .local v16, "token":J
    const/4 v11, 0x0

    .line 387
    .local v11, "bCopied":Z
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/data/data/com.sec.android.gallery3d"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 388
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "/data/data/com.sec.android.gallery3d does not exists"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    const/4 v4, -0x3

    .line 417
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    return v4

    .line 392
    :cond_4
    :try_start_1
    const-string/jumbo v4, "/data/system/enterprise"

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_5

    .line 393
    const/4 v4, -0x4

    .line 417
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 393
    return v4

    .line 396
    :cond_5
    :try_start_2
    const-string/jumbo v4, "/data/system/enterprise/lso"

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_6

    .line 397
    const/4 v4, -0x4

    .line 417
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    return v4

    .line 400
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 404
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 405
    const-string/jumbo v5, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    .line 404
    invoke-static {v15, v4, v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 406
    .local v11, "bCopied":Z
    if-eqz v11, :cond_7

    .line 407
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "setWallpaper() : Create Ripple image"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v4, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 410
    const-string/jumbo v6, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    .line 408
    invoke-static {v4, v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    .line 417
    :cond_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    .end local v11    # "bCopied":Z
    :goto_0
    if-nez v11, :cond_8

    .line 421
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "setWallpaper() : Error in copying file"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {v15}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 423
    const/4 v4, -0x4

    return v4

    .line 413
    :catch_0
    move-exception v12

    .line 414
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "setWallpaper() : error occurs"

    invoke-static {v4, v5, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 415
    const/4 v11, 0x0

    .line 417
    .local v11, "bCopied":Z
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 416
    .end local v11    # "bCopied":Z
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 417
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 416
    throw v4

    .line 426
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    move/from16 v0, v18

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7, v15}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setWallpaperData(JLjava/lang/String;)Z

    move-result v14

    .line 427
    .local v14, "result":Z
    if-nez v14, :cond_9

    .line 428
    const-string/jumbo v4, "LSOService"

    const-string/jumbo v5, "setWallpaper() : Failed to set wallpaper data. "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 430
    invoke-static {v15}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 432
    const/4 v4, -0x4

    return v4

    .line 435
    :cond_9
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 437
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 443
    :try_start_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "LSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 444
    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 443
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 444
    const-string/jumbo v5, " has changed banner wallpaper to file "

    .line 443
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 442
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 448
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    :goto_1
    invoke-static {v15}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 453
    const/4 v4, 0x0

    return v4

    .line 446
    :catch_1
    move-exception v13

    .line 448
    .local v13, "ignore":Ljava/lang/Exception;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 447
    .end local v13    # "ignore":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 448
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method
