.class public Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmDetailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$TimedCount;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Interval;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$DateTime;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$DrmDetailInfo$Count;
    }
.end annotation


# static fields
.field public static final DETAIL_COUNT:I = 0x1

.field public static final DETAIL_COUNT_FROM:I = 0x6

.field public static final DETAIL_COUNT_FROM_UNTIL:I = 0x7

.field public static final DETAIL_DATETIME:I = 0x2

.field public static final DETAIL_FROM:I = 0x5

.field public static final DETAIL_INTERVAL:I = 0x3

.field public static final DETAIL_NORIGHT:I = 0x9

.field public static final DETAIL_TIMED_COUNT:I = 0x4

.field public static final DETAIL_UNKNOWN:I = 0x8

.field public static final DETAIL_UNLIMITED:I


# instance fields
.field public ui:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
