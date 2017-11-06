.class Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;
.super Ljava/lang/Object;
.source "DataCheckDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 225
    iget-object v4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, "a":Landroid/app/Activity;
    const-string v4, "data_check_help"

    .line 227
    invoke-virtual {v0, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 228
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DataCheckDialog() : mPrefKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v8}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$100(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$100(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$200(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    const-string v4, "data_check_help_nearby_item"

    iget-object v7, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v7}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$100(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    iget-object v4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$200(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-static {v5}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$302(Z)Z

    .line 236
    invoke-static {}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DataCheckDialog()"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/app/music/common/activity/TrackActivity;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "extra_list_type"

    const v5, 0x10000b

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v4, "extra_key_word"

    iget-object v5, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v5}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$400(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v4, "extra_title"

    iget-object v5, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v5}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$500(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 253
    .end local v2    # "i":Landroid/content/Intent;
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->dismiss()V

    .line 254
    iget-object v4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$700(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 255
    iget-object v4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$700(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;->onResult(I)V

    .line 257
    :cond_1
    return-void

    :cond_2
    move v4, v6

    .line 229
    goto :goto_0

    :cond_3
    move v5, v6

    .line 235
    goto :goto_1

    .line 242
    :cond_4
    const-string v4, "data_check_help_dlna"

    iget-object v7, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v7}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$100(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    iget-object v4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->this$0:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$200(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_3
    invoke-static {v5}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->access$602(Z)Z

    .line 248
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 249
    .local v1, "fg":Landroid/app/Fragment;
    instance-of v4, v1, Lcom/samsung/android/app/music/common/player/PlayerControllable;

    if-eqz v4, :cond_0

    .line 250
    check-cast v1, Lcom/samsung/android/app/music/common/player/PlayerControllable;

    .end local v1    # "fg":Landroid/app/Fragment;
    invoke-interface {v1, v6}, Lcom/samsung/android/app/music/common/player/PlayerControllable;->launchChangePlayer(Z)V

    goto :goto_2

    :cond_5
    move v5, v6

    .line 246
    goto :goto_3
.end method
