.class public Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupInfo"
.end annotation


# static fields
.field public static final DRM_INVALID_AIRPLANE_MODE:I = 0x1f

.field public static final DRM_INVALID_AQUIRELICENSE:I = 0x18

.field public static final DRM_INVALID_CD_LIST:I = 0xc

.field public static final DRM_INVALID_CD_PLAYER:I = 0xd

.field public static final DRM_INVALID_CONNECT_FAIL:I = 0x20

.field public static final DRM_INVALID_EXPIRE_DATE:I = 0x21

.field public static final DRM_INVALID_PLAYREADY_DRM:I = 0x16

.field public static final DRM_INVALID_POPUP:I = 0x2

.field public static final DRM_INVALID_SD:I = 0xe

.field public static final DRM_INVALID_UNKNOWN:I = 0x17

.field public static final DRM_VALID_NCOUNTS:I = 0xb

.field public static final DRM_VALID_NOPOPUP:I


# instance fields
.field public count:I

.field public path:Ljava/lang/String;

.field public text1:I

.field public text2:I

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
