.class public Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;
.super Ljava/lang/Object;
.source "AppUpdateCheckObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Masking"
.end annotation


# static fields
.field private static API_RSP_RECEIVED_MASK:I

.field private static SKIP_MASK:I

.field private static TASK_PERFORMED_MASK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0xf

    sput v0, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->TASK_PERFORMED_MASK:I

    .line 20
    const/16 v0, 0xf0

    sput v0, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->API_RSP_RECEIVED_MASK:I

    .line 22
    const/16 v0, 0xf00

    sput v0, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->SKIP_MASK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAPIReceived(I)Z
    .locals 2
    .param p0, "status"    # I

    .prologue
    .line 41
    const/16 v0, 0x10

    sget v1, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->API_RSP_RECEIVED_MASK:I

    and-int/2addr v1, p0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSkipped(I)Z
    .locals 2
    .param p0, "status"    # I

    .prologue
    .line 33
    const/16 v0, 0x100

    sget v1, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->SKIP_MASK:I

    and-int/2addr v1, p0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTaskPerformed(I)Z
    .locals 2
    .param p0, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 37
    sget v1, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->TASK_PERFORMED_MASK:I

    and-int/2addr v1, p0

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needShowDialog(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 29
    invoke-static {p0}, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->isTaskPerformed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->isAPIReceived(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needSkip(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 25
    invoke-static {p0}, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->isSkipped(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->isTaskPerformed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
