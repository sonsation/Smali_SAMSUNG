.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;
.source "SeslFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback",
        "<",
        "Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    .prologue
    .line 978
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    .line 979
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V

    .line 980
    return-void
.end method


# virtual methods
.method public onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1053
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 984
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 985
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetHost()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->onGetHost()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1047
    .local v0, "w":Landroid/view/Window;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public onHasView()Z
    .locals 2

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1064
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->requestPermissionsFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;[Ljava/lang/String;I)V

    .line 1031
    return-void
.end method

.method public onShouldSaveFragmentState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Z
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onStartActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->startActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;I)V

    .line 1010
    return-void
.end method

.method public onStartActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->startActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1016
    return-void
.end method

.method public onStartIntentSenderFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->startIntentSenderFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1024
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->supportInvalidateOptionsMenu()V

    .line 1005
    return-void
.end method
