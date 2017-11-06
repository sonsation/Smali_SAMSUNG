.class Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$9;
.super Ljava/lang/Object;
.source "EdgeNotiLightEffectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$9;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$9;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->resetGradientDrawable()V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$9;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mIsAnimating:Z

    .line 326
    return-void
.end method
