.class Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;
.super Ljava/lang/Object;
.source "KeyguardDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get2(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get5(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int v0, v2, v3

    .line 167
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get3(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get4(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I

    move-result v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int v1, v2, v3

    .line 168
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 169
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 171
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->-get1(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;->this$1:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method
