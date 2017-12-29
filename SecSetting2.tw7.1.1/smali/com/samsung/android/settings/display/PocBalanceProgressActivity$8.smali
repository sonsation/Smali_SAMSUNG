.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;
.super Ljava/lang/Object;
.source "PocBalanceProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->showPocWasStoppedDialog()V
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
    .line 544
    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 548
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 549
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finish()V

    .line 546
    return-void
.end method
