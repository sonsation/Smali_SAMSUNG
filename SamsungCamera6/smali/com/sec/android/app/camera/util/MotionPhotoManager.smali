.class public Lcom/sec/android/app/camera/util/MotionPhotoManager;
.super Ljava/lang/Object;
.source "MotionPhotoManager.java"


# static fields
.field private static final KEY_MOTION_PHOTO_SERVICE_ENABLED:Ljava/lang/String; = "pref_global_motion_photo_service_enabled"

.field private static final TAG:Ljava/lang/String; = "MotionPhotoManager"


# instance fields
.field private mIsMotionPhotoStarted:Z

.field private mMotionPhotoCaptureIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsMotionPhotoStarted:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    return-void
.end method

.method private static isMotionPhotoComposerEnable(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v1, "pref_global_motion_photo_service_enabled"

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_global_motion_photo_key"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "pref_global_motion_photo_service_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "pref_global_motion_photo_service_enabled"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static setMotionPhotoComposerEnable(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "pref_global_motion_photo_service_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "MotionPhotoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionPhotoComposerEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pref_global_motion_photo_service_enabled"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createMotionPhotoComposer(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->isMotionPhotoComposerEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotionPhotoManager"

    const-string v1, "createMotionPhotoComposer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Factory;->create(Landroid/content/Context;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    :cond_0
    return-void
.end method

.method public getMotionPhotoSurface()Landroid/view/Surface;
    .locals 5

    const/4 v1, 0x0

    const-string v2, "MotionPhotoManager"

    const-string v3, "getMotionPhotoSurface"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "MotionPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMotionPhotoSurface failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "MotionPhotoManager"

    const-string v3, "getMotionPhotoSurface mMotionPhotoComposer is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMotionPhotoToken()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getToken()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public releaseMotionPhotoComposer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v0, :cond_0

    const-string v0, "MotionPhotoManager"

    const-string v1, "releaseMotionPhotoComposer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    :cond_0
    return-void
.end method

.method public requestMotionPhotoId()J
    .locals 6

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->store()J

    move-result-wide v2

    const-string v1, "MotionPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestMotionPhotoId returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "MotionPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestMotionPhotoId failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "MotionPhotoManager"

    const-string v4, "requestMotionPhotoId mMotionPhotoComposer is null"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMotionPhotoFilePath(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    const-string v1, "MotionPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMotionPhotoFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setStorePath(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MotionPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMotionPhotoFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "MotionPhotoManager"

    const-string v4, "setMotionPhotoFilePath mMotionPhotoComposer is null"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMotionPhotoInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V

    :cond_0
    return-void
.end method

.method public startMotionPhotoComposer(Lcom/samsung/android/camera/core/SemCamera$Parameters;Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsMotionPhotoStarted:Z

    const-string v1, "MotionPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMotionPhotoComposer : isEffectRecording "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    invoke-direct {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setCameraParameter(Lcom/samsung/android/camera/core/SemCamera$Parameters;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setEffectRecording(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->build()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MotionPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMotionPhotoComposer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopMotionPhotoComposer()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsMotionPhotoStarted:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsMotionPhotoStarted:Z

    const-string v1, "MotionPhotoManager"

    const-string v2, "stopMotionPhotoComposer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MotionPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionPhotoComposer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
