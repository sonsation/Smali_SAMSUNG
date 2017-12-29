.class Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;
.super Landroid/os/AsyncTask;
.source "PreloadedApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

.field final synthetic val$isShowSystemApps:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/PreloadedApps;
    .param p2, "val$isShowSystemApps"    # Z

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iput-boolean p2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->val$isShowSystemApps:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->val$isShowSystemApps:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-wrap1(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V

    .line 127
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-wrap0(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 130
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get3(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get3(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get3(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-set0(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 130
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get2(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get3(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get0(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-set0(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get3(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get3(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get3(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get0(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-get3(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 110
    :cond_0
    return-void
.end method
