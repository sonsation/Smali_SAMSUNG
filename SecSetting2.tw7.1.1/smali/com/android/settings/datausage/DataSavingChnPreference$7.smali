.class Lcom/android/settings/datausage/DataSavingChnPreference$7;
.super Ljava/lang/Object;
.source "DataSavingChnPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;->showDataCompressionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataSavingChnPreference;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$7;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 393
    return-void
.end method
