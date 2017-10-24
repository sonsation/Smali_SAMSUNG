.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 415
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    .line 419
    :cond_0
    return-void
.end method
