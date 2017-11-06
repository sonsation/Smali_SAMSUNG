.class Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$2;
.super Ljava/lang/Object;
.source "UpdateApplicationDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "music_player_pref"

    .line 135
    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 136
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "show_update_popup"

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 138
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method
