.class Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$5;
.super Landroid/database/ContentObserver;
.source "BaseMaskImageEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->registerOneHandSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$5;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView$5;->this$0:Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->invalidate()V

    .line 421
    return-void
.end method
