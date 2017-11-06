.class Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8$1;
.super Ljava/lang/Object;
.source "EdgeNotiLightEffectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8$1;->this$1:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8$1;->this$1:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->hide()V

    .line 282
    return-void
.end method
