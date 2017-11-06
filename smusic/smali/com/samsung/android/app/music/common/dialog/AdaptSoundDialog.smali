.class public Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;
.super Landroid/app/DialogFragment;
.source "AdaptSoundDialog.java"


# static fields
.field private static final ADAPT_SOUND_OFF:I = 0x1

.field private static final ADAPT_SOUND_ON:I = 0x0

.field private static final CLASSNAME:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "adapt_sound"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->handlingActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->isEnableAdaptSoundPath()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->setAdaptSound(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->warningAdaptSound(Landroid/content/Context;)V

    return-void
.end method

.method private handlingActivity()V
    .locals 4

    .prologue
    .line 132
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 139
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found hearingadjust application :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->handlingActivityNotFound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    throw v1
.end method

.method private handlingActivityNotFound()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "app_package_name"

    const-string v2, "com.sec.hearingadjust"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 147
    return-void
.end method

.method private isEnableAdaptSoundPath()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isHeadsetOrBT()Z

    move-result v0

    return v0
.end method

.method private setAdaptSound(Z)V
    .locals 6
    .param p1, "turnOn"    # Z

    .prologue
    .line 89
    const/4 v1, 0x1

    .line 91
    .local v1, "isOk":Z
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setAdaptSound(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ADSD"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->CLASSNAME:Ljava/lang/String;

    const-string/jumbo v3, "setAdaptSound(false) - IllegalArgumentException!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private warningAdaptSound(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const v0, 0x7f0a01c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 42
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a047b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAdaptSoundOn(Landroid/content/Context;)Z

    move-result v1

    .line 46
    .local v1, "active":Z
    invoke-virtual {p0, v5, v5}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->setStyle(II)V

    .line 48
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a006c

    new-instance v7, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    const v6, 0x7f0a008a

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    const v6, 0x7f0b0017

    if-eqz v1, :cond_0

    :goto_0
    new-instance v7, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;

    invoke-direct {v7, p0, v3}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog$2;-><init>(Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;Landroid/content/Context;)V

    invoke-virtual {v2, v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 85
    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v5

    .line 60
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAlreadyDiagnosed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    :cond_1
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    goto :goto_0
.end method
