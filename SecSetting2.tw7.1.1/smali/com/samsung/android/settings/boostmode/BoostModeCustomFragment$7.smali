.class Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;
.super Ljava/lang/Object;
.source "BoostModeCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 449
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap5(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isCustomModeChangedValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Z)V

    .line 456
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get14(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get12(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    .line 451
    return-void
.end method
