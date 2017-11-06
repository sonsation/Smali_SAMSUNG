.class public Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck;
.super Ljava/lang/Object;
.source "MilkDrmLicenseCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;,
        Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_DRM_LICENSE:Ljava/lang/String; = "com.samsung.android.app.music.action.ACTION_CHECK_DRM_LICENSE"

.field private static final ACTION_DRM_LICENSE_COMPLETE:Ljava/lang/String; = "com.samsung.android.app.music.action.ACTION_DRM_LICENSE_COMPLETE"

.field private static final DEFAULT_APP_ID:I = -0x1

.field private static final EXTRA_CAN_GET_DRM_LICENSE:Ljava/lang/String; = "extra_can_get_drm_license"

.field private static final EXTRA_MESSENGER:Ljava/lang/String; = "extra_messenger"

.field private static final EXTRA_NEXT_REQ_ID:Ljava/lang/String; = "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

.field private static final EXTRA_ORDER_ID:Ljava/lang/String; = "extra_order_id"

.field private static final EXTRA_TRACK_ID:Ljava/lang/String; = "extra_track_id"

.field private static final LOG_TAG:Ljava/lang/String; = "MilkDrmLicenseCheck"

.field private static final TAG:Ljava/lang/String; = "SV-PlayerServer"

.field private static final WAIT_TIME_OUT:J = 0x7530L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
