.class Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;
.super Ljava/lang/Object;
.source "PocBalanceSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocApplyDialog()V
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
    .line 253
    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 258
    .local v1, "screenID":I
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f019c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 259
    .local v0, "eventID":I
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 260
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-wrap2(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 255
    return-void
.end method
