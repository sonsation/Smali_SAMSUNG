.class Lcom/android/settings/dashboard/DashboardAdapter$8;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindFavoriteTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;

.field final synthetic val$tile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardAdapter;
    .param p2, "val$tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$8;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$8;->val$tile:Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1089
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$8;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object v2, v2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1091
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1093
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$8;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardAdapter;->-get2(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1088
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1095
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$8;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardAdapter;->-get2(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter$8;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object v3, v3, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
