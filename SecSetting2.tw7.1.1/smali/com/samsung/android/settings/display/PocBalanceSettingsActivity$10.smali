.class Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$10;
.super Ljava/lang/Object;
.source "PocBalanceSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocReadErrorOccuredOnProgressDialog()V
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
    .line 322
    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$10;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 325
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 324
    return-void
.end method
