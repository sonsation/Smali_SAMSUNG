.class Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;->this$0:Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;->this$0:Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->refreshIrisAuthentication()V

    .line 149
    const/4 v0, 0x0

    return v0
.end method
