.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;
.super Ljava/lang/Object;
.source "SoundPlayerActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundPlayerChangedListener"
.end annotation


# instance fields
.field private mAcquireLicenceDialog:Landroid/app/ProgressDialog;

.field private mToast:Landroid/widget/Toast;

.field private final mToastHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V
    .locals 1

    .prologue
    .line 830
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;

    .prologue
    .line 830
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private hideAcquireLicenceDialog()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    .line 913
    :cond_0
    return-void
.end method

.method private showAcquireLicenceDialog()V
    .locals 3

    .prologue
    .line 894
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 899
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    .line 900
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->drm_acquiring_license:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 903
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 905
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mAcquireLicenceDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onAcquireLicenceDialogChanged(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 839
    if-eqz p1, :cond_0

    .line 840
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->showAcquireLicenceDialog()V

    .line 844
    :goto_0
    return-void

    .line 842
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->hideAcquireLicenceDialog()V

    goto :goto_0
.end method

.method public onError(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 860
    const-string v1, "UiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onError() - type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    :cond_0
    const-string v1, "UiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onError() - The activity is finishing or destroyed already."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :goto_0
    return-void

    .line 869
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 883
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    .line 887
    .local v0, "msg":I
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 890
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    goto :goto_0

    .line 871
    .end local v0    # "msg":I
    :pswitch_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    .line 872
    .restart local v0    # "msg":I
    goto :goto_1

    .line 874
    .end local v0    # "msg":I
    :pswitch_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->unable_to_play_during_call:I

    .line 875
    .restart local v0    # "msg":I
    goto :goto_1

    .line 877
    .end local v0    # "msg":I
    :pswitch_2
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->network_error_occurred_msg:I

    .line 878
    .restart local v0    # "msg":I
    goto :goto_1

    .line 880
    .end local v0    # "msg":I
    :pswitch_3
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->sdcard_removed_msg:I

    .line 881
    .restart local v0    # "msg":I
    goto :goto_1

    .line 869
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onShowDrmPopup(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 848
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)V

    .line 849
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getNewInstance(Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    move-result-object v0

    .line 855
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "drm_popup"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 856
    return-void
.end method
