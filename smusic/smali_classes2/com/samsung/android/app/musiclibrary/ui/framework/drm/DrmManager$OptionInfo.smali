.class public Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionInfo"
.end annotation


# instance fields
.field public ringtone:Z

.field public share:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;->ringtone:Z

    .line 1298
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;->share:Z

    return-void
.end method
