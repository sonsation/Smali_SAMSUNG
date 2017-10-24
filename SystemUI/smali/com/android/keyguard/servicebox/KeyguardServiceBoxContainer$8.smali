.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setExpandState(Z)V
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
    .line 635
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 639
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 640
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setPageType(I)V

    .line 642
    return v1

    :cond_0
    move v0, v1

    .line 641
    goto :goto_0
.end method
