.class public Lcom/sec/android/app/camera/CommandReceiver;
.super Ljava/lang/Object;
.source "CommandReceiver.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CommandInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandReceiver"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    iput-object p1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iput-object p3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object p2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object p4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    return-void
.end method

.method private setSeparatedShootingMode(ILjava/lang/String;)V
    .locals 6

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->checkShootingModeVersion(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    if-eq v0, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CommandReceiver;->showShootingModeVersionDialog(Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1d9

    iget-object v5, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/camera/Camera;->startSeparatedShootingMode(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setShootingMode(I)V
    .locals 3

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByShootingMode(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->checkShootingModeVersion(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CommandReceiver;->showShootingModeVersionDialog(Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    goto :goto_0
.end method

.method private showShootingModeVersionDialog(Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/CommandReceiver$1;->$SwitchMap$com$sec$android$app$camera$plugin$PlugInShootingModesStorage$VersionErrors:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBeautyMenuSelect(I)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyMode(I)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShapeCorrection(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->handleShapeCorrectionModeChanged(I)V

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDualEffectMenuSelect(I)Z
    .locals 2

    const/16 v1, 0x5a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraDualEffect(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectSync(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onMenuSelected(II)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onEffectDownloadMenuCommand()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.app.samsungapps"

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "com.sec.android.app.samsungapps"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1da

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "samsungapps://SubCategoryList/0000005082"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v4, 0x4000020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->processBack()V

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0a010e

    invoke-static {v3, v4, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "CommandReceiver"

    const-string v4, "onEffectDownloadMenuCommand - Activity is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFoodBlurTypeSelect(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onHelpHubSelect()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CommandReceiver"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->showHelpHub(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onISOSelect(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onLaunchMenu(I)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a01e8

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "CommandReceiver"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "CommandReceiver"

    const-string v3, "preview is not ready"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v0, 0x63

    sparse-switch p1, :sswitch_data_0

    :goto_1
    move v1, v2

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x64

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->processBack()V

    goto :goto_1

    :sswitch_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_8

    const/16 v0, 0x7f

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startThumbnailPreviewCallback()V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x66

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x8

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto/16 :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_c

    :cond_b
    const/16 v0, 0x85

    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_1

    :cond_c
    const/16 v0, 0x84

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_3
        0x12 -> :sswitch_1
        0x5a -> :sswitch_1
        0x71 -> :sswitch_1
        0x75 -> :sswitch_1
        0x77 -> :sswitch_0
        0x7d -> :sswitch_1
        0x7f -> :sswitch_3
        0x80 -> :sswitch_1
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x83 -> :sswitch_1
        0x84 -> :sswitch_4
        0x96 -> :sswitch_1
        0x232f -> :sswitch_1
    .end sparse-switch
.end method

.method public onMoreSettingSelect()Z
    .locals 10

    const/16 v9, 0x78

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "CommandReceiver"

    const-string v8, "onMoreSettingSelect"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a01e8

    invoke-static {v6, v7, v5}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    const-string v6, "CommandReceiver"

    const-string v7, "return isCapturing.."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isSettingLaunching()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v6, "CommandReceiver"

    const-string v7, "returning because it is launch setting"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "CommandReceiver"

    const-string v7, "returning because camera is finished"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->setSettingLaunched(Z)V

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v7, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "setting"

    sget-object v7, Lcom/sec/android/app/camera/Camera;->mSetting:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "dim"

    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getDimController()Lcom/sec/android/app/camera/DimController;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "camera-parcel"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/Camera;->setCameraPausingForSetting(Z)V

    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/16 v7, 0x7e6

    invoke-virtual {v5, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v9, v9}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "CommandReceiver"

    const-string v7, "onMoreSettingSelect - CameraSettingActivity not found"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.camera"

    const-string v7, "com.sec.android.app.camera.setting.CameraSettingActivity"

    invoke-direct {v1, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v1, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method public onRecordingMotionSpeedMenuSelect(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    const/16 v1, 0x170d

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onMenuSelected(II)Z

    move-result v0

    return v0
.end method

.method public onShootingModeDownloadCommand()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.samsungapps"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "com.sec.android.app.samsungapps"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1db

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "samsungapps://CategoryList/0000004068"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v3, 0x4000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "CommandReceiver"

    const-string v4, "onShootingModeDownloadCommand - Activity is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShootingModeMenuSelect(ILjava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isChangingShootingModeDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "CommandReceiver"

    const-string v3, "return changing shooting mode is disabled.."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "CommandReceiver"

    const-string v3, "return isSwitchingCamera.."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v2, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/camera/CommandReceiver;->setSeparatedShootingMode(ILjava/lang/String;)V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommandReceiver;->setShootingMode(I)V

    goto :goto_1
.end method

.method public onSingleEffectMenuSelect(IZ)Z
    .locals 7

    const/16 v6, 0x8

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v3

    if-eq v3, p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x57

    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    :cond_0
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-interface {v3, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_3

    const/16 v1, 0x7f

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-interface {v3, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onSwitchCameraSelect()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CommandReceiver"

    const-string v2, "onSwitchCameraSelect"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CommandReceiver"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CommandReceiver"

    const-string v2, "return isLaunchGallery.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CommandReceiver"

    const-string v2, "return camera has no window focus.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CommandReceiver"

    const-string v2, "return isTimerCounting.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CommandReceiver"

    const-string v2, "return shootingMode is not activated.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isChangingShootingModeDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "CommandReceiver"

    const-string v2, "return changing shooting mode is disabled.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0a01e8

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "CommandReceiver"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "CommandReceiver"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDefaultPageSelected()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CommandReceiver"

    const-string v2, "return BaseMenu has no focus"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isOverlayHelpShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "CommandReceiver"

    const-string v2, "return overlayHelp menu is showing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const-string v1, "CommandReceiver"

    const-string v2, "Switch camera is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSwitchCameraSelected()V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onToggleSelect(I)Z
    .locals 11

    const v10, 0x7f0a01c3

    const/16 v9, 0x91

    const/16 v8, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v5, "CommandReceiver"

    const-string v6, "return isStartPreview.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isLaunchGallery()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "CommandReceiver"

    const-string v6, "return isLaunchGallery.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0a01e8

    invoke-static {v5, v6, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const-string v5, "CommandReceiver"

    const-string v6, "return isCapturing.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "CommandReceiver"

    const-string v6, "return isRecording.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "CommandReceiver"

    const-string v6, "return isAutoFocusing.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-lt v0, v3, :cond_17

    move v0, v2

    :goto_1
    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v4, v5

    goto :goto_0

    :sswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getLowBatteryStatus()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a01e7

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a0242

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureLowToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6, v10, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v6

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_8

    if-ne v0, v5, :cond_8

    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_8

    move v0, v2

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isTouchAEProcessing()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/Camera;->resetTouchAE(Z)V

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusActive()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    :cond_b
    if-ne v0, v5, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z107"

    const/4 v7, 0x3

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_3

    :sswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getLowBatteryStatus()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a01e7

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    goto/16 :goto_0

    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a0242

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureLowToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6, v10, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    goto/16 :goto_0

    :cond_f
    if-ne v0, v5, :cond_11

    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-eqz v4, :cond_10

    const/4 v0, 0x2

    :goto_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z106"

    const/16 v7, 0xaa

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_4

    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_4

    :sswitch_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isTouchAEProcessing()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/Camera;->resetTouchAE(Z)V

    :cond_12
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    :cond_13
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusActive()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    :cond_14
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopPreview()V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v8, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleChangeParameter(II)V

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    if-ne v0, v5, :cond_15

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z087"

    invoke-static {v8, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_5

    :sswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto/16 :goto_2

    :sswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSaveRichTone(I)V

    goto/16 :goto_2

    :sswitch_5
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v9, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v6

    invoke-virtual {v4, v9, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPanoramaMode(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z145"

    const/16 v7, 0x87

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_8
    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_16

    move v0, v2

    :cond_16
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraExposureMeter(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z141"

    const/16 v7, 0xb

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_9
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionWideSelfieMode(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSoundAndShotMode(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v6, 0x4d

    invoke-virtual {v4, v6, v0}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_17
    move v0, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_8
        0xc -> :sswitch_2
        0x22 -> :sswitch_4
        0x4d -> :sswitch_a
        0x6a -> :sswitch_1
        0x6c -> :sswitch_0
        0x7d -> :sswitch_3
        0x87 -> :sswitch_7
        0x8d -> :sswitch_6
        0x91 -> :sswitch_5
        0xaa -> :sswitch_1
        0xad -> :sswitch_9
    .end sparse-switch
.end method

.method public onVideoCollageRecTimeSelect(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    const/4 v0, 0x1

    return v0
.end method

.method public onVideoCollageTypeMenuSelect(I)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    return v1
.end method

.method public onWatermarkMenuSelect(IZ)Z
    .locals 3

    const/16 v2, 0x7d

    const-string v0, "CommandReceiver"

    const-string v1, "onWatermarkMenuSelect.."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWatermarkId(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onWhiteBalanceSelect(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
