.class Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;
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
    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;->val$a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;->val$doNotShowAgainKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;->val$isMyMusicModeOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;->val$a:Landroid/app/Activity;

    const-string v2, "music_player_pref"

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    .local v0, "uiPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;->val$doNotShowAgainKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    .end local v0    # "uiPreferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;->val$isMyMusicModeOn:Z

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMyMusicMode(Z)V

    .line 69
    return-void
.end method
