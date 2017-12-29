.class public Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;
.super Landroid/app/Activity;
.source "SecSetupLockScreenIntroActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;,
        Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;,
        Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;
    }
.end annotation


# instance fields
.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mResultCode:I

.field private nextButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)Landroid/widget/RadioGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mResultCode:I

    .line 65
    iput-object v1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 66
    iput-object v1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 202
    new-instance v0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;-><init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextButtonListener:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method

.method private updateView(Z)V
    .locals 11
    .param p1, "isCreate"    # Z

    .prologue
    const v10, 0x7f1107a9

    const/16 v9, 0x8

    .line 124
    const v7, 0x7f1107ee

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 125
    .local v4, "progressBar":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    const v7, 0x7f1107a6

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 130
    .local v2, "lockScreenIntroCHeckBox":Landroid/widget/CheckBox;
    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 132
    const v7, 0x7f1107a5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    .local v1, "learn_more":Landroid/widget/TextView;
    new-instance v7, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$2;-><init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v7, 0x7f1107a7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    iput-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 143
    const-string/jumbo v7, "keyguard"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 145
    const v7, 0x7f1103cc

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    .local v0, "description_text":Landroid/widget/TextView;
    const v7, 0x7f0b0ace

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v9}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 178
    .end local v0    # "description_text":Landroid/widget/TextView;
    :cond_1
    :goto_0
    const v7, 0x7f1107ac

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 180
    .local v5, "radioButtonOptionNo":Landroid/widget/RadioButton;
    const v7, 0x7f1107ae

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 181
    .local v3, "nextBtn":Landroid/widget/Button;
    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 182
    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 184
    const v8, 0x7f0b0f22

    .line 183
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 192
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_3
    return-void

    .line 152
    .end local v3    # "nextBtn":Landroid/widget/Button;
    .end local v5    # "radioButtonOptionNo":Landroid/widget/RadioButton;
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz p1, :cond_5

    .line 153
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v10}, Landroid/widget/RadioGroup;->check(I)V

    .line 155
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 156
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 161
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_6

    .line 162
    const v7, 0x7f1107aa

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 163
    .local v6, "removedButton":Landroid/widget/RadioButton;
    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 166
    .end local v6    # "removedButton":Landroid/widget/RadioButton;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 167
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 168
    .restart local v6    # "removedButton":Landroid/widget/RadioButton;
    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 171
    .end local v6    # "removedButton":Landroid/widget/RadioButton;
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v7

    if-nez v7, :cond_1

    .line 172
    const v7, 0x7f1107a8

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 173
    .restart local v6    # "removedButton":Landroid/widget/RadioButton;
    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 186
    .end local v6    # "removedButton":Landroid/widget/RadioButton;
    .restart local v3    # "nextBtn":Landroid/widget/Button;
    .restart local v5    # "radioButtonOptionNo":Landroid/widget/RadioButton;
    :cond_8
    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 188
    const v8, 0x7f0b051d

    .line 187
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public hasMultipleUsers()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 278
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextAction(I)V
    .locals 3
    .param p1, "paramInt"    # I

    .prologue
    .line 118
    const-string/jumbo v0, "SetupLockScreenIntroActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nextAction resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->setResult(I)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->finish()V

    .line 117
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I
    .param p3, "paramIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 260
    const/16 v0, 0x2735

    if-ne p1, v0, :cond_0

    .line 261
    if-eqz p3, :cond_0

    const-string/jumbo v0, ":settings:password_quality"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->updateView(Z)V

    .line 263
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextAction(I)V

    .line 264
    return-void

    .line 267
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 103
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/RadioGroup;
    .param p2, "arg1"    # I

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->updateView(Z)V

    .line 197
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 76
    :cond_0
    const v0, 0x7f0402e2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->setContentView(I)V

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->updateView(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 80
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 93
    const-string/jumbo v0, "SetupLockScreenIntroActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 96
    const-string/jumbo v0, "SetupLockScreenIntroActivity"

    const-string/jumbo v1, "Remove all face template"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->updateSecureUserID([B)Z

    .line 99
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->finish()V

    .line 112
    return v2

    .line 114
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->updateView(Z)V

    .line 86
    return-void
.end method

.method protected startFirstRunActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "paramIntent"    # Landroid/content/Intent;
    .param p2, "paramInt"    # I

    .prologue
    .line 271
    const-string/jumbo v0, "SetupLockScreenIntroActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting activity for result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string/jumbo v0, "hasMultipleUsers"

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->hasMultipleUsers()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const-string/jumbo v0, "useImmersiveMode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 270
    return-void
.end method
