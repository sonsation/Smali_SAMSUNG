.class public Lcom/sec/android/app/camera/engine/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;
    }
.end annotation


# static fields
.field private static CAMERA_ID_DUAL_BACK:I = 0x0

.field private static CAMERA_ID_DUAL_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/sec/android/app/camera/engine/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraId:I

.field private mDeviceArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDualBackCameraId:I

.field private mDualFrontCameraId:I

.field private mFrontCameraId:I

.field private mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

.field private mNumberOfCameras:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/camera/engine/CameraHolder;->CAMERA_ID_DUAL_BACK:I

    const/16 v0, 0xb

    sput v0, Lcom/sec/android/app/camera/engine/CameraHolder;->CAMERA_ID_DUAL_FRONT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualBackCameraId:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualFrontCameraId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/camera/core/SemCamera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    new-array v1, v1, [Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    new-instance v2, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    invoke-direct {v2}, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    aget-object v1, v1, v0

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->getCameraInfo(ILcom/samsung/android/camera/core/SemCamera$CameraInfo;)V

    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    iput v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DUALCAMERA:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/sec/android/app/camera/engine/CameraHolder;->CAMERA_ID_DUAL_BACK:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualBackCameraId:I

    sget v1, Lcom/sec/android/app/camera/engine/CameraHolder;->CAMERA_ID_DUAL_FRONT:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualFrontCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualBackCameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualFrontCameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private static Assert(Z)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method protected static declared-synchronized instance()Lcom/sec/android/app/camera/engine/CameraHolder;
    .locals 2

    const-class v1, Lcom/sec/android/app/camera/engine/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/engine/CameraHolder;->sHolder:Lcom/sec/android/app/camera/engine/CameraHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/engine/CameraHolder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/CameraHolder;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/CameraHolder;->sHolder:Lcom/sec/android/app/camera/engine/CameraHolder;

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/CameraHolder;->sHolder:Lcom/sec/android/app/camera/engine/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static openCamera(Landroid/app/Activity;I)Lcom/samsung/android/camera/core/SemCamera;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;

    invoke-direct {v2}, Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;-><init>()V

    throw v2

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CameraHolder"

    const-string v3, "openCamera CAMERA disable"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;

    invoke-direct {v2}, Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;-><init>()V

    throw v2

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/engine/CameraHolder;->instance()Lcom/sec/android/app/camera/engine/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/engine/CameraHolder;->open(I)Lcom/samsung/android/camera/core/SemCamera;
    :try_end_0
    .catch Lcom/samsung/android/camera/core/SemCamera$CameraBusyRuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    :goto_0
    throw v1

    :catch_1
    move-exception v1

    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "openCamera failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    throw v1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected getBackCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method protected getCameraDevice(I)Lcom/samsung/android/camera/core/SemCamera;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "CameraHolder"

    const-string v2, "Don\'t have prepared device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core/SemCamera;

    goto :goto_0
.end method

.method protected getCameraInfo(I)Lcom/samsung/android/camera/core/SemCamera$CameraInfo;
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DUALCAMERA:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualBackCameraId:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualFrontCameraId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDualBackCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualBackCameraId:I

    return v0
.end method

.method protected getDualFrontCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualFrontCameraId:I

    return v0
.end method

.method protected getFrontCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method protected getNumberOfCameras()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method protected declared-synchronized open(I)Lcom/samsung/android/camera/core/SemCamera;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core/SemCamera;

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_INSTANCE_CAMERA:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I

    if-eq v3, p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->release()V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/camera/core/SemCamera;->open(I)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/core/SemCamera;->setCameraUsage(I)V

    iput p1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I
    :try_end_1
    .catch Lcom/samsung/android/camera/core/SemCamera$CameraBusyRuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_1
    move-exception v1

    const-wide/16 v4, 0xc8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {p1}, Lcom/samsung/android/camera/core/SemCamera;->open(I)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/core/SemCamera;->setCameraUsage(I)V

    iput p1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->reconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v1

    :try_start_6
    const-string v3, "CameraHolder"

    const-string v4, "reconnect failed."

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method protected prepareDevice(I)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHolder prepareDevice - open Camera Id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/camera/core/SemCamera;->open(I)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/core/SemCamera;->setCameraUsage(I)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core/SemCamera$CameraNoResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v1

    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {p1}, Lcom/samsung/android/camera/core/SemCamera;->open(I)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/core/SemCamera;->setCameraUsage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CameraHolder"

    const-string v4, "openCamera failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw v1
.end method

.method protected declared-synchronized release()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    if-eqz v5, :cond_1

    move v5, v3

    :goto_0
    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CameraHolder;->Assert(Z)V

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CameraHolder;->Assert(Z)V

    const-string v3, "CameraHolder"

    const-string v4, "CameraDevice.release()"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v0, :cond_0

    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->stopPreview()V

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->release()V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized releaseDevices(I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    if-eqz v5, :cond_1

    move v5, v3

    :goto_0
    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CameraHolder;->Assert(Z)V

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CameraHolder;->Assert(Z)V

    const-string v3, "CameraHolder"

    const-string v4, "releaseDevices"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v0, :cond_0

    if-eq p1, v2, :cond_0

    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->release()V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
