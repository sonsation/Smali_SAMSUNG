.class Lcom/android/settings/datausage/DataSavingChnPreference$6;
.super Ljava/lang/Object;
.source "DataSavingChnPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 388
    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$6;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 390
    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "showDataCompressionDialog click cancle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method
