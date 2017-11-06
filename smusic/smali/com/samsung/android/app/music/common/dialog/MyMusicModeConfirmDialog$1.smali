.class Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;
.super Ljava/lang/Object;
.source "MyMusicModeConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$doNotShowAgainKey:Ljava/lang/String;

.field final synthetic val$isMyMusicModeOn:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;->val$a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;->val$doNotShowAgainKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;->val$isMyMusicModeOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;->val$a:Landroid/app/Activity;

    const-string v4, "music_player_pref"

    .line 75
    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "uiPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;->val$doNotShowAgainKey:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    .end local v0    # "uiPreferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;->val$isMyMusicModeOn:Z

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMyMusicMode(Z)V

    .line 80
    return-void

    :cond_1
    move v1, v2

    .line 79
    goto :goto_0
.end method
