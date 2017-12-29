.class Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;
.super Ljava/lang/Object;
.source "SelectAudioApplications.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get3(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-virtual {v0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->showSelectedList()V

    .line 103
    return v2

    .line 107
    :cond_0
    return v1
.end method
