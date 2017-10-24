.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
.super Ljava/lang/Object;
.source "SemDisplaySolutionManager.java"


# static fields
.field private static RETURN_ERROR:J = 0x0L

.field private static RETURN_ERROR_F:F = 0.0f

.field public static final SUPPORT_CHANGABLE_NORMAL_AUTO_BRIGHTNESS:I = 0x2

.field public static final SUPPORT_CHANGABLE_NUMBER_AUTO_BRIGHTNESS:I = 0x1

.field public static final SUPPORT_ONLY_MANUAL_BRIGHTNESS:I = 0x0

.field public static final SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL:I = 0x3

.field public static final SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL_V3:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SemDisplaySolutionManager"


# instance fields
.field final mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR:J

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string/jumbo v0, "SemDisplaySolutionManager"

    const-string/jumbo v1, "In Constructor Stub-Service(ISemDisplaySolutionManager) is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    .line 58
    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 182
    const-string/jumbo v0, "SemDisplaySolutionManager"

    const-string/jumbo v1, "Error SemDisplaySolutionManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    return-void
.end method


# virtual methods
.method public getAlphaBlendingValue()F
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v1, :cond_0

    .line 99
    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v1

    .line 103
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getAlphaBlendingValue()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v1
.end method

.method public getGalleryModeEnable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v1, :cond_0

    .line 84
    return v2

    .line 88
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getGalleryModeEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public getVideoModeEnable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v1, :cond_0

    .line 69
    return v2

    .line 73
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getVideoModeEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isMdnieScenarioControlServiceEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v1, :cond_0

    .line 115
    return v2

    .line 119
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setGalleryModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setGalleryModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMdnieScenarioControlServiceEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setScreenBrightnessForPreview(I)V
    .locals 2
    .param p1, "settingValue"    # I

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setScreenBrightnessForPreview(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setVideoModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setVideoModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
