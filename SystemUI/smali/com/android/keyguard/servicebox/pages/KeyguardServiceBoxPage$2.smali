.class Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    .line 98
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;->this$0:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    .line 93
    return-void
.end method
