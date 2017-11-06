.class Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;
.super Ljava/lang/Object;
.source "AbsShareableWithDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 256
    iget-object v4, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "music_player_pref"

    .line 257
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 258
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 259
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "show_share_popup"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    iget-object v4, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->dismiss()V

    .line 261
    iget-object v4, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->access$000(Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;)Lcom/samsung/android/app/music/AbsShareableWithDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 263
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "args_ids"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 264
    .local v3, "ids":[J
    const-string v4, "args_bixbyCrossSharePackages"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "bixbyCrossSharePackages":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->access$000(Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;)Lcom/samsung/android/app/music/AbsShareableWithDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v1}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->shareInternal(Landroid/content/Context;[JLjava/lang/String;)V

    .line 269
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "bixbyCrossSharePackages":Ljava/lang/String;
    .end local v3    # "ids":[J
    :cond_0
    return-void
.end method
