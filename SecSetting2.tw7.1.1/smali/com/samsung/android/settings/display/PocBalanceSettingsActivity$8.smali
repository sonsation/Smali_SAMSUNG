.class Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$8;
.super Ljava/lang/Object;
.source "PocBalanceSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocWriteErrorOccuredOnBootDialog()V
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
    .line 292
    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$8;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 294
    return-void
.end method