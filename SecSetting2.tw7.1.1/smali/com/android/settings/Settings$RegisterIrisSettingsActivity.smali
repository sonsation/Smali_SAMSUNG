.class public Lcom/android/settings/Settings$RegisterIrisSettingsActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterIrisSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 382
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 383
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "iris_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v1, "fromOutSide"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    const-string/jumbo v1, "isFromKnoxSetupWizard"

    invoke-virtual {p0}, Lcom/android/settings/Settings$RegisterIrisSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isFromKnoxSetupWizard"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    const-string/jumbo v1, "knox_userId"

    invoke-virtual {p0}, Lcom/android/settings/Settings$RegisterIrisSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "knox_userId"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    .line 390
    const-string/jumbo v1, "is_knox"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    const-string/jumbo v1, "knox_userId"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/Settings$RegisterIrisSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFidoReadyContainer"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    const-string/jumbo v1, "isEnterpriseIDIris"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/Settings$RegisterIrisSettingsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 404
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$RegisterIrisSettingsActivity;->finish()V

    .line 379
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$RegisterIrisSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
