.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;
.super Ljava/lang/Object;
.source "PocBalanceProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->showPocCancelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x0

    .line 504
    if-eqz p1, :cond_0

    move-object v4, p1

    check-cast v4, Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 505
    .local v0, "context":Landroid/content/Context;
    :cond_0
    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 507
    .local v2, "resource":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 508
    .local v3, "screenId":I
    const/4 v1, 0x0

    .line 509
    .local v1, "eventId":I
    if-eqz v2, :cond_1

    .line 510
    const v4, 0x7f0f019d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 511
    const v4, 0x7f0f019e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 512
    invoke-static {v0, v3, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 515
    .end local v1    # "eventId":I
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "screenId":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 516
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 517
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finish()V

    .line 503
    return-void
.end method
