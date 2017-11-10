.class public Lcom/sec/android/app/camera/setting/ListSettingFragment;
.super Landroid/app/ListFragment;
.source "ListSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;,
        Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;,
        Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;
    }
.end annotation


# static fields
.field protected static final CAMCORDER_FRONT_RESOLUTION_LIST:I = 0x4

.field protected static final CAMCORDER_REAR_RESOLUTION_LIST:I = 0x3

.field protected static final CAMERA_FRONT_RESOLUTION_LIST:I = 0x2

.field protected static final CAMERA_REAR_RESOLUTION_LIST:I = 0x1

.field private static final CAMERA_SETTING:Ljava/lang/String; = "setting"

.field private static final LIST_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "ListSettingFragment"


# instance fields
.field private mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

.field private mList:[Ljava/lang/String;

.field private mListType:I

.field private mPictureFormatSwitch:Landroid/widget/Switch;

.field mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

.field private mResolutionIdList:[I

.field public onResolutionListener:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/ListSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/setting/ListSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    return v0
.end method

.method private getIndexFromResolutionIdList(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getResolutionLimitingSnapShot()Ljava/lang/String;
    .locals 6

    const v5, 0x7f0a02ab

    const v3, 0x7f0a007c

    const v4, 0x7f0a0272

    const-string v0, ""

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_WIDTH:I

    if-nez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_HEIGHT:I

    if-nez v1, :cond_0

    const v1, 0x7f0a02ad

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_WIDTH:I

    if-nez v1, :cond_1

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_HEIGHT:I

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0271

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getResolutionLimitingVDIS()Ljava/lang/String;
    .locals 7

    const v6, 0x7f0a02ae

    const v5, 0x7f0a02ab

    const v3, 0x7f0a007b

    const v4, 0x7f0a0272

    const-string v0, ""

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "UHD"

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0271

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private getRestrictedVideoResolution()Ljava/lang/String;
    .locals 6

    const v5, 0x7f0a02ab

    const v3, 0x7f0a007c

    const v4, 0x7f0a0272

    const-string v0, ""

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a02ad

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0271

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private initializeList()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v18, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getInstance()Lcom/sec/android/app/camera/util/CameraResolutionListLoader;

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const v2, 0x7f0a00e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualBackVideoIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_dual_resolution_key"

    const-string v4, "1920x1080"

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v4, v4, v13

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_1
    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    goto :goto_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getRestrictedVideoResolution()Ljava/lang/String;

    move-result-object v22

    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v2, 0x7f100008

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v2, 0x7f0a019c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a019c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v21, ""

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00da

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_4
    const v2, 0x7f100009

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResolutionLimitingSnapShot()Ljava/lang/String;

    move-result-object v16

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_7

    const v2, 0x7f10000a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v2, 0x7f0a0204

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0204

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0a007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResolutionLimitingVDIS()Ljava/lang/String;

    move-result-object v17

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE:Z

    if-eqz v2, :cond_5

    const v2, 0x7f10000b

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v2, 0x7f0a0205

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0205

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    new-instance v12, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    :cond_6
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040012

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_1

    :cond_7
    move-object v2, v14

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto/16 :goto_5

    :pswitch_1
    const v2, 0x7f0a00d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualFrontVideoIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_dual_resolution_key"

    const-string v4, "1920x1080"

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v4, v4, v13

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    goto :goto_6

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getRestrictedVideoResolution()Ljava/lang/String;

    move-result-object v22

    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v2, 0x7f100008

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v2, 0x7f0a019c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a019c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v21, ""

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00da

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const v2, 0x7f100009

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_d

    const v2, 0x7f10000a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v2, 0x7f0a0204

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0a007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0204

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0a007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResolutionLimitingVDIS()Ljava/lang/String;

    move-result-object v17

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE:Z

    if-eqz v2, :cond_b

    const v2, 0x7f10000b

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v2, 0x7f0a0205

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0205

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    new-instance v12, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    :cond_c
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040012

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_1

    :cond_d
    move-object v2, v14

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto/16 :goto_8

    :pswitch_2
    const v2, 0x7f0a00ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackPictureIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    const/4 v13, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v4, v4, v13

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    :goto_a
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040017

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f100041

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v2, 0x7f0a00e5

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f100042

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v2, 0x7f0a01e6

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f100043

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v14, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    :cond_f
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040012

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    goto/16 :goto_a

    :pswitch_3
    const v2, 0x7f0a00d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontPictureSizeIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    const/4 v13, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v4, v4, v13

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    :goto_c
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040012

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    goto :goto_c

    :cond_13
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSupportedCamcorderResolution(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;I)Lcom/sec/android/app/camera/setting/ListSettingFragment;
    .locals 3

    new-instance v1, Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "setting"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private setActionBarTitle(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0e0051

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->initializeList()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/content/Context;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->onResolutionListener:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100040

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->onResolutionListener:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v2, v2, p3

    iget v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;->onResolutionSelect(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const v1, 0x7f0a0221

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ListSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
