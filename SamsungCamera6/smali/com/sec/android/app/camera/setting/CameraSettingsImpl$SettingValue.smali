.class Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;
.super Ljava/lang/Object;
.source "CameraSettingsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingValue"
.end annotation


# instance fields
.field public mMenuid:I

.field public mModeid:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iput p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/sec/android/app/camera/setting/CameraSettingsImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;-><init>(II)V

    return-void
.end method
