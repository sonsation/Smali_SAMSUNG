.class Lcom/mapps/android/view/EndingAdView$17$1;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Lcom/mezzo/common/network/Nt$OnProgressbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView$17;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/EndingAdView$17;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView$17;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$17$1;->this$1:Lcom/mapps/android/view/EndingAdView$17;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$17$1;->this$1:Lcom/mapps/android/view/EndingAdView$17;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$17;->access$0(Lcom/mapps/android/view/EndingAdView$17;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$5(Lcom/mapps/android/view/EndingAdView;I)V

    .line 524
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$17$1;->this$1:Lcom/mapps/android/view/EndingAdView$17;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$17;->access$0(Lcom/mapps/android/view/EndingAdView$17;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$5(Lcom/mapps/android/view/EndingAdView;I)V

    .line 519
    return-void
.end method
