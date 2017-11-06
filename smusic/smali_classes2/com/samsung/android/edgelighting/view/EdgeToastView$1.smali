.class Lcom/samsung/android/edgelighting/view/EdgeToastView$1;
.super Ljava/lang/Object;
.source "EdgeToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeToastView;->show(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeToastView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 209
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 214
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 199
    return-void
.end method
