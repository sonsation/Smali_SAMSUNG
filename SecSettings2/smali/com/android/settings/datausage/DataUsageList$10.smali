.class Lcom/android/settings/datausage/DataUsageList$10;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList;->updatePolicy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageList;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$10;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 349
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$10;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-get5(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$10;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$10;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const-class v2, Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 352
    const v3, 0x7f0b1c04

    const/4 v4, 0x0

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 348
    return-void
.end method
