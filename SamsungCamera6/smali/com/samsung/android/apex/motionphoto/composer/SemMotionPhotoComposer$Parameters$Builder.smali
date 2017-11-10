.class public final Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
.super Ljava/lang/Object;
.source "SemMotionPhotoComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCameraParam:Lcom/samsung/android/camera/core/SemCamera$Parameters;

.field private mFlattenParam:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
    .locals 3

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$1;)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mFlattenParam:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mFlattenParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->unflatten(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mCameraParam:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-eqz v1, :cond_1

    const-string v1, "preview-size"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "preview-size"

    const-string v2, "preview-size"

    invoke-virtual {v0, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->put(Ljava/util/Map;)V

    const-string v1, "buffering-mode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "buffering-mode"

    const-string v2, "front"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v1, "on"

    const-string v2, "effect-mode"

    invoke-virtual {v0, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "preview-format"

    const-string v2, "android-opaque"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0

    :cond_4
    const-string v1, "width"

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mCameraParam:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "height"

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mCameraParam:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setBufferingMode(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v2, "buffering-mode"

    if-eqz p1, :cond_0

    const-string v0, "front"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    const-string v0, "back"

    goto :goto_0
.end method

.method public setCameraParameter(Lcom/samsung/android/camera/core/SemCamera$Parameters;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mCameraParam:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    return-object p0
.end method

.method public setEffectRecording(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v2, "effect-mode"

    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public setFlattenParameter(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mFlattenParam:Ljava/lang/String;

    return-object p0
.end method

.method public setFpsFactor(I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "fps-factor"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSaveAsFlipped(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "save-as-flipped"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setUseIntrinsicTimestamp(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "use-intrinsic-timestamp"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setVideoFrameRate(I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "frame-rate"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
