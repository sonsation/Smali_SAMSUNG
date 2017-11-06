.class Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$2;
.super Ljava/lang/Object;
.source "LegalInformationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "music_player_pref"

    const/4 v4, 0x0

    .line 109
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    .local v1, "uiPreference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "legal_information_agreed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string/jumbo v2, "push_notification"

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->access$000(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .line 115
    invoke-static {v3}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->access$000(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 114
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->setPushAgreement(Landroid/content/Context;Z)V

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->reloadQueue()V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    .line 121
    invoke-interface {v2}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 122
    return-void
.end method
