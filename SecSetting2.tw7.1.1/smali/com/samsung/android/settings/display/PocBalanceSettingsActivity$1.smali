.class Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;
.super Ljava/lang/Object;
.source "PocBalanceSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-wrap1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 234
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-wrap0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    goto :goto_0
.end method
