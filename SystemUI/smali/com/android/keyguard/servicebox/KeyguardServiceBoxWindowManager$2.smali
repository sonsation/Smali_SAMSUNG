.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$2;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxWindowManager.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->showFloatingView(Ljava/lang/String;Landroid/view/View;ZZZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$wlp:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;
    .param p2, "val$view"    # Landroid/view/View;
    .param p3, "val$wlp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$2;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    iput-object p2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$2;->val$wlp:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public layoutParamsUpdated()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$2;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->-get0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$2;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$2;->val$wlp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-void
.end method
