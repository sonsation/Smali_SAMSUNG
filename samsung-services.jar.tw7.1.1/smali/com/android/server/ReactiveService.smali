.class public final Lcom/android/server/ReactiveService;
.super Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.source "ReactiveService.java"


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLAG_ACTIVATED:I = 0x1

.field private static final FLAG_DEACTIVATED:I = 0x0

.field private static final FLAG_TRIGGERED:I = 0x2

.field private static final FRP_FLAG:I = 0x2

.field private static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final REACTIVATION_FLAG:I = 0x0

.field private static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field private static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field private static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field private static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field private static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field private static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field private static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final SERVICE_FLAG:I = 0x1

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveService"

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private final mDataBlockFile:Ljava/lang/String;

.field private mErrorCode:I

.field private mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mServiceSupport:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    .line 135
    const-string v0, "terrier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;-><init>()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    .line 160
    sput-object p1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 163
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeInit()V

    .line 165
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    .line 167
    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    .line 158
    return-void
.end method

.method private hasPermission(ILjava/lang/String;)Z
    .locals 17
    .param p1, "callingPid"    # I
    .param p2, "callingMethodName"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v2, "com.osp.app.signin"

    .line 174
    .local v2, "SAMSUNG_ACCOUNT_PKG_NAME":Ljava/lang/String;
    new-instance v12, Landroid/content/pm/Signature;

    const-string v13, "308201c13082012aa00302010202044e5cba90300d06092a864886f70d010105050030243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e673020170d3131303833303130323532305a180f32313131303830363130323532305a30243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e6730819f300d06092a864886f70d010101050003818d0030818902818100d80c410cec5799bb3607d27e0c992c9c35238c42e8726a5ecbb190f6dfb59aee9fa3b1a8812620bafb25b24ce4fc777d4b98da1f7fda95f4a7788a70c635fca893e022a676ae40c906ee83a63d953a310da47d3789af59219621aafb551ebe866f977298c70a9d60e5251270db0d35869cb7c5522b7a82c951189cb5d2b9b19d0203010001300d06092a864886f70d0101050500038181007f6820e6cfd72e67afeba80043da6eccc5ec5b0b994974669d2d7c8876f7e1fa9767dbc930549f875c1604cd8a6ea7d84b66ec500c7bf11526ee4ff77d0720036d61454e9354f5291c0545a43ddf26f9d09e64226239cbd0b98945578d596aa9f9ff7a05c140a2f05fe0260f574bfce94f50273558101f896a9c70be6b05496b"

    invoke-direct {v12, v13}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 175
    .local v12, "sigSA":Landroid/content/pm/Signature;
    const-string v4, ""

    .line 176
    .local v4, "currentPkgName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 178
    .local v10, "ret":Z
    sget-object v13, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 179
    .local v3, "am":Landroid/app/ActivityManager;
    if-nez v3, :cond_0

    .line 180
    const-string v13, "ReactiveService"

    const-string v14, "ActivityManager is null, something wrong in framework"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v13, 0x0

    return v13

    .line 184
    :cond_0
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_1

    .line 185
    const-string v13, "ReactiveService"

    const-string v14, "getRunningAppProcesses return null List. Cannot check permision"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v13, 0x0

    return v13

    .line 189
    :cond_1
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "processInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 190
    .local v8, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_2

    .line 191
    iget-object v4, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 197
    .end local v8    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    sget-object v13, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 200
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v13, 0x40

    :try_start_0
    invoke-virtual {v7, v4, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 201
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    if-eq v13, v14, :cond_5

    .line 203
    const-string v13, "ReactiveService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOT Allowed : pkg does not match uid("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "ret":Z
    :cond_4
    :goto_0
    if-eqz v10, :cond_8

    .line 229
    const-string v13, "ReactiveService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Requested package name = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_1
    return v10

    .line 207
    .restart local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v10    # "ret":Z
    :cond_5
    :try_start_1
    const-string v13, "android"

    invoke-virtual {v7, v13, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_6

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .local v10, "ret":Z
    goto :goto_0

    .line 209
    .local v10, "ret":Z
    :cond_6
    const-string v13, "com.osp.app.signin"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 211
    iget-object v14, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v13, 0x0

    array-length v15, v14

    :goto_2
    if-ge v13, v15, :cond_4

    aget-object v11, v14, v13

    .line 213
    .local v11, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v12, v11}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .local v10, "ret":Z
    goto :goto_0

    .line 211
    .local v10, "ret":Z
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 223
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v5

    .line 224
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    const-string v13, "ReactiveService"

    const-string v14, "Fail to get packageinfo."

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "ret":Z
    :cond_8
    const-string v13, "ReactiveService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission denied. Package name = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native nativeFinishedSetupWizard()Z
.end method

.method private native nativeGetFlag(I)I
.end method

.method private native nativeGetRandom()[B
.end method

.method private native nativeGetString()Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInit()V
.end method

.method private native nativeRemoveString()I
.end method

.method private native nativeSessionAccept([B)[B
.end method

.method private native nativeSessionComplete([B)I
.end method

.method private native nativeSetFlag(IILjava/lang/String;)I
.end method

.method private native nativeSetString(Ljava/lang/String;)I
.end method

.method private native nativeVerify(Ljava/lang/String;I)I
.end method

.method private native nativeisCsUnlockRequest()Z
.end method

.method private wipeLength()V
    .locals 8

    .prologue
    .line 239
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const-string v5, "ReactiveService"

    const-string v6, "Wipe length of data for Persistent partition."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v5, 0x4

    new-array v1, v5, [B

    .line 248
    .local v1, "data":[B
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 249
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    const-wide/16 v6, 0x24

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 250
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 251
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 252
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 236
    return-void

    .line 240
    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":[B
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v5, "ReactiveService"

    const-string v6, "partition not available?"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    return-void

    .line 253
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "data":[B
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 254
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "ReactiveService"

    const-string v6, "failed to reset length"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 255
    return-void

    .line 256
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 257
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 256
    throw v5
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0
.end method

.method public getFlag(I)I
    .locals 6
    .param p1, "flag"    # I

    .prologue
    const/4 v5, 0x0

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 367
    :pswitch_0
    const/4 v3, -0x3

    iput v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 368
    iget v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v3

    .line 292
    :pswitch_1
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_0

    .line 293
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    .line 295
    :cond_0
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 296
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeGetFlag(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, "ret":I
    :goto_0
    monitor-exit v3

    .line 371
    :goto_1
    if-gez v2, :cond_6

    .line 372
    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 376
    :goto_2
    const-string v3, "ReactiveService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlag() : flag=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], ret=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return v2

    .line 295
    .end local v2    # "ret":I
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 300
    :cond_1
    const/4 v2, -0x2

    .restart local v2    # "ret":I
    goto :goto_1

    .line 304
    .end local v2    # "ret":I
    :pswitch_2
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_5

    .line 330
    sget-object v3, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v4, "persistent_data_block"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v3, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 331
    iget-object v3, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v3, :cond_2

    .line 333
    const-string v3, "ReactiveService"

    const-string v4, "Failed to load FRP Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v3, -0x7

    return v3

    .line 341
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->isEnabled()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 350
    .local v1, "frp_flag":Z
    if-eqz v1, :cond_4

    .line 352
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 353
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeFinishedSetupWizard()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    const/4 v2, 0x1

    .restart local v2    # "ret":I
    goto :goto_0

    .line 343
    .end local v1    # "frp_flag":Z
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    const/4 v3, -0x6

    iput v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 346
    iget v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v3

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "frp_flag":Z
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "ret":I
    goto :goto_0

    .line 352
    .end local v2    # "ret":I
    :catchall_1
    move-exception v4

    monitor-exit v3

    throw v4

    .line 360
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "ret":I
    goto :goto_1

    .line 363
    .end local v1    # "frp_flag":Z
    .end local v2    # "ret":I
    :cond_5
    const/4 v2, -0x2

    .restart local v2    # "ret":I
    goto :goto_1

    .line 374
    :cond_6
    iput v5, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_2

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getRandom()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 646
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_0

    .line 648
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 649
    return-object v4

    .line 652
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 655
    return-object v4

    .line 658
    :cond_1
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetRandom()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "ret":[B
    monitor-exit v1

    .line 662
    if-nez v0, :cond_2

    .line 664
    const/4 v1, -0x4

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 665
    return-object v4

    .line 658
    .end local v0    # "ret":[B
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 668
    .restart local v0    # "ret":[B
    :cond_2
    return-object v0
.end method

.method public getServiceSupport()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_0

    .line 443
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 444
    return-object v4

    .line 447
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 450
    return-object v4

    .line 453
    :cond_1
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    monitor-exit v1

    .line 457
    if-nez v0, :cond_2

    .line 458
    const/4 v1, -0x4

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 460
    :cond_2
    return-object v0

    .line 453
    .end local v0    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public removeString()I
    .locals 4

    .prologue
    .line 510
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_0

    .line 512
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 513
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    .line 516
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 519
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    .line 522
    :cond_1
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeRemoveString()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "ret":I
    monitor-exit v1

    .line 526
    if-eqz v0, :cond_2

    .line 527
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 529
    :cond_2
    return v0

    .line 522
    .end local v0    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public sessionAccept([B)[B
    .locals 5
    .param p1, "input"    # [B

    .prologue
    const/4 v3, 0x0

    .line 544
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_0

    .line 546
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 547
    return-object v3

    .line 550
    :cond_0
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 552
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionAccept([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit v3

    .line 561
    if-nez v1, :cond_1

    .line 562
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 564
    :cond_1
    return-object v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 557
    .local v1, "ret":[B
    :try_start_1
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":[B
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public sessionComplete([B)I
    .locals 5
    .param p1, "input"    # [B

    .prologue
    .line 578
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_0

    .line 580
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 581
    iget v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v2

    .line 586
    :cond_0
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 588
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionComplete([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "ret":I
    :goto_0
    monitor-exit v3

    .line 597
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    .line 598
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeisCsUnlockRequest()Z

    move-result v2

    .line 597
    if-eqz v2, :cond_2

    .line 601
    sget-object v2, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v3, "persistent_data_block"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 602
    iget-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v2, :cond_1

    .line 604
    const-string v2, "ReactiveService"

    const-string v3, "Failed to load FRP Manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v2, -0x7

    return v2

    .line 591
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 593
    .restart local v1    # "ret":I
    :try_start_1
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 609
    .restart local v1    # "ret":I
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->wipeLength()V

    .line 610
    iget-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 617
    :cond_2
    :goto_1
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 619
    return v1

    .line 612
    :catch_1
    move-exception v0

    .line 613
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setFlag(IILjava/lang/String;)I
    .locals 5
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 398
    if-eqz p1, :cond_0

    .line 400
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 401
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    .line 404
    :cond_0
    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_1

    .line 405
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_1

    .line 407
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 408
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    .line 411
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 413
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 414
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    .line 417
    :cond_2
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ReactiveService;->nativeSetFlag(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "ret":I
    monitor-exit v1

    .line 421
    if-gez v0, :cond_3

    .line 422
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 426
    :goto_0
    const-string v1, "ReactiveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlag() : flag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v0

    .line 417
    .end local v0    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 424
    .restart local v0    # "ret":I
    :cond_3
    iput v4, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 476
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_0

    .line 478
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 479
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    .line 482
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 484
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 485
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    .line 488
    :cond_1
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSetString(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "ret":I
    monitor-exit v1

    .line 492
    if-eqz v0, :cond_2

    .line 493
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 495
    :cond_2
    return v0

    .line 488
    .end local v0    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public verify(Ljava/lang/String;I)I
    .locals 4
    .param p1, "vt"    # Ljava/lang/String;
    .param p2, "operation"    # I

    .prologue
    .line 683
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_0

    .line 685
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 686
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    .line 689
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 691
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 692
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v1

    .line 695
    :cond_1
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 696
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/ReactiveService;->nativeVerify(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "ret":I
    monitor-exit v1

    .line 699
    if-eqz v0, :cond_2

    .line 700
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 702
    :cond_2
    return v0

    .line 695
    .end local v0    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method
