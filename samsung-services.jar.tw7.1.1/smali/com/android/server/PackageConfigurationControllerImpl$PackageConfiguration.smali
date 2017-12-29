.class Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
.super Ljava/lang/Object;
.source "PackageConfigurationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageConfigurationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageConfiguration"
.end annotation


# instance fields
.field private mAspectRatio:F

.field private mConventionalRatio:F

.field private mConventionalServerRatio:F

.field private mForceShowBackgroundSurface:Z

.field private mIsConventionalMode:Z

.field private mNavbarIsAlwaysEnabled:Z

.field private mReducedAppScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

.field private mReducedSideTouchAreaSize:I

.field final synthetic this$0:Lcom/android/server/PackageConfigurationControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/PackageConfigurationControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PackageConfigurationControllerImpl;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->this$0:Lcom/android/server/PackageConfigurationControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mAspectRatio:F

    return v0
.end method

.method public getConventionalRatio()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalRatio:F

    return v0
.end method

.method public getConventionalServerRatio()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalServerRatio:F

    return v0
.end method

.method public getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedAppScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    return-object v0
.end method

.method public getReducedSideTouchAreaSize()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedSideTouchAreaSize:I

    return v0
.end method

.method public isBackgroundSurfaceNeed()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mForceShowBackgroundSurface:Z

    return v0
.end method

.method public isConventionalMode()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mIsConventionalMode:Z

    return v0
.end method

.method public isDefault()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedAppScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedSideTouchAreaSize:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mNavbarIsAlwaysEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    iget v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mAspectRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalServerRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNavbarIsAlwaysEnabled()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mNavbarIsAlwaysEnabled:Z

    return v0
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mAspectRatio:F

    .line 93
    return-void
.end method

.method public setBackgroundSurfaceNeeded(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mForceShowBackgroundSurface:Z

    .line 138
    return-void
.end method

.method public setConventionalMode(Z)V
    .locals 0
    .param p1, "isConventionalMode"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mIsConventionalMode:Z

    .line 130
    return-void
.end method

.method public setConventionalRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalRatio:F

    .line 122
    return-void
.end method

.method public setConventionalServerRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mConventionalServerRatio:F

    .line 114
    return-void
.end method

.method public setNavbarIsAlwaysEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mNavbarIsAlwaysEnabled:Z

    .line 101
    return-void
.end method

.method setReducedScreenParams(Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;)V
    .locals 0
    .param p1, "reducedScreenParams"    # Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedAppScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    .line 77
    return-void
.end method

.method public setReducedSideTouchAreaSize(I)V
    .locals 0
    .param p1, "reducedSideTouchAreaSize"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->mReducedSideTouchAreaSize:I

    .line 89
    return-void
.end method
