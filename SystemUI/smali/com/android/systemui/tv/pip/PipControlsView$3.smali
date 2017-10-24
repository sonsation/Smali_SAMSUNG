.class Lcom/android/systemui/tv/pip/PipControlsView$3;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipControlsView;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlsView$3;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 83
    if-eqz p2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$3;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    check-cast p1, Lcom/android/systemui/tv/pip/PipControlButtonView;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/systemui/tv/pip/PipControlsView;->-set0(Lcom/android/systemui/tv/pip/PipControlsView;Lcom/android/systemui/tv/pip/PipControlButtonView;)Lcom/android/systemui/tv/pip/PipControlButtonView;

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$3;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlsView;->-get0(Lcom/android/systemui/tv/pip/PipControlsView;)Lcom/android/systemui/tv/pip/PipControlButtonView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$3;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/tv/pip/PipControlsView;->-set0(Lcom/android/systemui/tv/pip/PipControlsView;Lcom/android/systemui/tv/pip/PipControlButtonView;)Lcom/android/systemui/tv/pip/PipControlButtonView;

    goto :goto_0
.end method
