.class Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$8;
.super Ljava/lang/Object;
.source "BoostModeCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$8;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$8;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$8;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 471
    const/4 v0, 0x1

    return v0

    .line 473
    :cond_0
    return v1
.end method
